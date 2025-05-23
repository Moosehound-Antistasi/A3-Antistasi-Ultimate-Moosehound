#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_unit"];

if (isPlayer _unit) exitWith {};
if !([_unit] call A3A_fnc_canFight) exitWith {};

private _inPlayerGroup = (isPlayer (leader _unit));
if (_unit getVariable ["helping",false]) exitWith {if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearm_heal_in_progress"}};

private _rearming = _unit getVariable ["rearming",false];
if (_rearming) exitWith {if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearm_in_progress"; _unit setVariable ["rearming",false]}};
if (vehicle _unit != _unit) exitWith {};
_unit setVariable ["rearming",true];

private _unitType = _unit getVariable "unitType";
private _customLoadout = rebelLoadouts get _unitType;
private _loadoutPrimaryWeapon = if (!isNil "_customLoadout") then { (_customLoadout select 0) select 0 } else { "" };
private _primaryWeapon = primaryWeapon _unit;
private _primaryWeaponWeight = [[_primaryWeapon, ["PrimaryWeaponsCatchAll", "Weapons"]] call A3A_fnc_itemArrayWeight, 0] select (_primaryWeapon isEqualTo "");
private _validPrimaryWeapons = allRifles + allSniperRifles + allMachineGuns + allSMGs + allShotguns;
private _secondaryWeapon = secondaryWeapon _unit;
private _nearbyContainers = [];
private _foundItem = false;
private _selectedWeapon = objNull;
private _potentialWeapon = objNull;
private _baseWeapon = objNull;
private _potentialContainer = objNull;
private _selectedContainer = objNull;
private _containerWeapons = [];
private _maxDistance = 51;
private _needsRearm = false;
private _timeOut = 0;
private _deadBodies = [];
private _selectedBody = objNull;
private _targetMagazines = 4;
private _primaryMagazines = [];
private _bodyEquipment = [];
private _selectedEquipment = objNull;

_nearbyContainers = nearestObjects [_unit, ["ReammoBox_F","LandVehicle","WeaponHolderSimulated","GroundWeaponHolder","WeaponHolder"], _maxDistance];
if (boxX in _nearbyContainers) then {_nearbyContainers = _nearbyContainers - [boxX]};


if ((!isNil "_customLoadout" && {_primaryWeapon != _loadoutPrimaryWeapon}) || {isNil "_customLoadout"}) then {
	_needsRearm = true;
	if (count _nearbyContainers > 0) then {
		{
			_potentialContainer = _x;
			if (_unit distance _potentialContainer < _maxDistance) then {
				if ((count weaponCargo _potentialContainer > 0) && !(_potentialContainer getVariable ["busy",false])) then {
					_containerWeapons = weaponCargo _potentialContainer;
					for "_i" from 0 to (count _containerWeapons - 1) do {
						_potentialWeapon = _containerWeapons select _i;
						_potentialWeaponWeight = [_potentialWeapon, ["PrimaryWeaponsCatchAll", "Weapons"]] call A3A_fnc_itemArrayWeight;
						_baseWeapon = [_potentialWeapon] call BIS_fnc_baseWeapon;
						if (!(_baseWeapon in ["hgun_PDW2000_F","hgun_Pistol_01_F","hgun_ACPC2_F"]) && (_baseWeapon in _validPrimaryWeapons) && (_potentialWeaponWeight > _primaryWeaponWeight)) then {
							_selectedContainer = _potentialContainer;
							_foundItem = true;
							_selectedWeapon = _potentialWeapon;
							};
						};
					};
				};
		} forEach _nearbyContainers;
	};
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		if (!((alive _selectedContainer) || (_selectedContainer isKindOf "ReammoBox_F"))) then {_selectedContainer setVariable ["busy",true]};
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_better_weapon"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if ((unitReady _unit) && ([_unit] call A3A_fnc_canFight) && (_unit distance _selectedContainer > 3) && (_selectedContainer isKindOf "ReammoBox_F") && (!isNull _selectedContainer)) then {_unit setPos position _selectedContainer};
		if (_unit distance _selectedContainer < 3) then {
			_unit action ["TakeWeapon",_selectedContainer,_selectedWeapon];
			sleep 5;
			if (primaryWeapon _unit isEqualTo _selectedWeapon) then {
				if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_better_weapon_confirm"};
				if (_selectedContainer isKindOf "ReammoBox_F") then {_unit action ["rearm",_selectedContainer]};
			};
		};
		_selectedContainer setVariable ["busy",false];
	};
	_primaryWeapon = primaryWeapon _unit;
	sleep 3;
};

_foundItem = false;
_targetMagazines = 4;
if (_primaryWeapon in allMachineGuns) then {_targetMagazines = 2};
_primaryMagazines = getArray (configFile / "CfgWeapons" / _primaryWeapon / "magazines");
if ({_x in _primaryMagazines} count (magazines _unit) < _targetMagazines) then {
	_needsRearm = true;
	_foundItem = false;
	if (count _nearbyContainers > 0) then {
		{
			_potentialContainer = _x;
			if (({_x in _primaryMagazines} count magazineCargo _potentialContainer) > 0) then {
				if (_unit distance _potentialContainer < _maxDistance) then {
					_selectedContainer = _potentialContainer;
					_foundItem = true;
				};
			};
		} forEach _nearbyContainers;
	};
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if (({_x in _primaryMagazines} count (magazines _selectedBody) > 0) && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
};

if ((_foundItem) && (_unit getVariable "rearming")) then {
	_unit stop false;
	if (!((alive _selectedContainer) || (_selectedContainer isKindOf "ReammoBox_F"))) then {_selectedContainer setVariable ["busy",true]};
	_unit doMove (getPosATL _selectedContainer);
	if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming"};
	_timeOut = time + 60;
	waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
	if ((unitReady _unit) && ([_unit] call A3A_fnc_canFight) && (_unit distance _selectedContainer > 3) && (_selectedContainer isKindOf "ReammoBox_F") && (!isNull _selectedContainer)) then {_unit setPos position _selectedContainer};
	if (_unit distance _selectedContainer < 3) then {
		_unit action ["rearm",_selectedContainer];
		if ({_x in _primaryMagazines} count (magazines _unit) >= _targetMagazines) then {
			if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming_confirm"};
		} else {
			if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming_confirm_partially"};
		};
	};
	_selectedContainer setVariable ["busy",false];
} else {
	if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming_fail"};
};

_foundItem = false;
if ((_secondaryWeapon == "") && (loadAbs _unit < 340)) then {
	if (count _nearbyContainers > 0) then {
		{
			_potentialContainer = _x;
			if (_unit distance _potentialContainer < _maxDistance) then {
				if ((count weaponCargo _potentialContainer > 0) && !(_potentialContainer getVariable ["busy",false])) then {
					_containerWeapons = weaponCargo _potentialContainer;
					for "_i" from 0 to (count _containerWeapons - 1) do {
						_potentialWeapon = _containerWeapons select _i;
						if ((_potentialWeapon in allMissileLaunchers) || (_potentialWeapon in allRocketLaunchers)) then {
							_selectedContainer = _potentialContainer;
							_foundItem = true;
							_selectedWeapon = _potentialWeapon;
						};
					};
				};
			};
		} forEach _nearbyContainers;
	};
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		if ((!alive _selectedContainer) || (!(_selectedContainer isKindOf "ReammoBox_F"))) then {_selectedContainer setVariable ["busy",true]};
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_secondary_weapon"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if ((unitReady _unit) && ([_unit] call A3A_fnc_canFight) && (_unit distance _selectedContainer > 3) && (_selectedContainer isKindOf "ReammoBox_F") && (!isNull _selectedContainer)) then {_unit setPos position _selectedContainer};
		if (_unit distance _selectedContainer < 3) then {
			_unit action ["TakeWeapon",_selectedContainer,_selectedWeapon];
			sleep 3;
			if (secondaryWeapon _unit == _selectedWeapon) then {
				if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_secondary_weapon_confirm"};
				if (_selectedContainer isKindOf "ReammoBox_F") then {sleep 3;_unit action ["rearm",_selectedContainer]};
			};
		};
		_selectedContainer setVariable ["busy",false];
	};
	_secondaryWeapon = secondaryWeapon _unit;
	sleep 3;
};

_foundItem = false;
if (_secondaryWeapon != "") then {
	_primaryMagazines = getArray (configFile / "CfgWeapons" / _secondaryWeapon / "magazines");
	if ({_x in _primaryMagazines} count (magazines _unit) < 2) then {
		_needsRearm = true;
		_foundItem = false;
		if (count _nearbyContainers > 0) then {
			{
				_potentialContainer = _x;
				if ({_x in _primaryMagazines} count magazineCargo _potentialContainer > 0) then {
					if (_unit distance _potentialContainer < _maxDistance) then {
						_selectedContainer = _potentialContainer;
						_foundItem = true;
					};
				};
			} forEach _nearbyContainers;
		};
		_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
		{
			_selectedBody = _x;
			if (({_x in _primaryMagazines} count (magazines _selectedBody) > 0) && (_unit distance _selectedBody < _maxDistance)) then {
				_selectedContainer = _selectedBody;
				_foundItem = true;
			};
		} forEach _deadBodies;
	};
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		if (!alive _selectedContainer) then {_selectedContainer setVariable ["busy",true]};
		_unit doMove (position _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if ((unitReady _unit) && ([_unit] call A3A_fnc_canFight) && (_unit distance _selectedContainer > 3) && (_selectedContainer isKindOf "ReammoBox_F") && (!isNull _selectedContainer)) then {_unit setPos position _selectedContainer};
		if (_unit distance _selectedContainer < 3) then {
			if ((backpack _unit == "") && (backPack _selectedContainer != "")) then {
				_unit addBackPackGlobal ((backpack _selectedContainer) call A3A_fnc_basicBackpack);
				_unit action ["rearm",_selectedContainer];
				sleep 3;
				{_unit addItemToBackpack _x} forEach (backpackItems _selectedContainer);
				removeBackpackGlobal _selectedContainer;
			} else {
				_unit action ["rearm",_selectedContainer];
			};

			if ({_x in _primaryMagazines} count (magazines _unit) >= 2) then {
				if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming_confirm"};
			} else {
				if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearming_confirm_partially"};
			};
		};
		_selectedContainer setVariable ["busy",false];
	} else {
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_secondary_weapon_fail"};
	};
	sleep 3;
};

_foundItem = false;
if (!haveRadio && {!(_unit call A3A_fnc_hasARadio)}) then {
	_needsRearm = true;
	_foundItem = false;
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if ((_selectedBody call A3A_fnc_getRadio != "") && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		_selectedContainer setVariable ["busy",true];
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_radio"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if (_unit distance _selectedContainer < 3) then {
			_unit action ["rearm",_selectedContainer];
			private _radio = _selectedContainer call A3A_fnc_getRadio;
			_unit linkItem _radio;
			_selectedContainer unlinkItem _radio;
		};
		_selectedContainer setVariable ["busy",false];
	};
};

_foundItem = false;
if (hmd _unit == "") then {
	_needsRearm = true;
	_foundItem = false;
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if ((hmd _selectedBody != "") && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		_selectedContainer setVariable ["busy",true];
		private _hmd = hmd _selectedContainer;
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_nv_goggles"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if (_unit distance _selectedContainer < 3) then {
			_unit action ["rearm",_selectedContainer];
			_unit linkItem _hmd;
			_selectedContainer unlinkItem _hmd;
		};
		_selectedContainer setVariable ["busy",false];
	};
};

_foundItem = false;
if (!(headgear _unit in allArmoredHeadgear)) then {
	_needsRearm = true;
	_foundItem = false;
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if (((headgear _selectedBody) in allArmoredHeadgear) && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		_selectedContainer setVariable ["busy",true];
		private _helmet = headgear _selectedContainer;
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_helmet"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if (_unit distance _selectedContainer < 3) then {
			_unit action ["rearm",_selectedContainer];
			_unit addHeadgear _helmet;
			removeHeadgear _selectedContainer;
		};
		_selectedContainer setVariable ["busy",false];
	};
};

_foundItem = false;
private _targetFAKs = if ([_unit] call A3A_fnc_isMedic) then {10} else {1};
if ({_x == "FirstAidKit"} count (items _unit) < _targetFAKs) then {
	_needsRearm = true;
	_foundItem = false;
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if (("FirstAidKit" in items _selectedBody) && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		_selectedContainer setVariable ["busy",true];
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_fak"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if (_unit distance _selectedContainer < 3) then {
			while {{_x == "FirstAidKit"} count (items _unit) < _targetFAKs} do {
				_unit action ["rearm",_selectedContainer];
				_unit addItem "FirstAidKit";
				_selectedContainer removeItem "FirstAidKit";
				if !("FirstAidKit" in items _selectedBody) exitWith {};
				sleep 3;
			};
		};
		_selectedContainer setVariable ["busy",false];
	};
};

_foundItem = false;
_numberX = getNumber (configfile >> "CfgWeapons" >> vest cursortarget >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Chest" >> "armor");
_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
{
	_selectedBody = _x;
	if ((getNumber (configfile >> "CfgWeapons" >> vest _selectedBody >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Chest" >> "armor") > _numberX) && (_unit distance _selectedBody < _maxDistance)) then {
		_selectedContainer = _selectedBody;
		_foundItem = true;
	};
} forEach _deadBodies;
if ((_foundItem) && (_unit getVariable "rearming")) then {
	_unit stop false;
	_selectedContainer setVariable ["busy",true];
	_unit doMove (getPosATL _selectedContainer);
	if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_vest"};
	_timeOut = time + 60;
	waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
	if (_unit distance _selectedContainer < 3) then {
		_itemsUnit = vestItems _unit;
		_unit addVest (vest _selectedContainer);
		{_unit addItemToVest _x} forEach _itemsUnit;
		_unit action ["rearm",_selectedContainer];
		_bodyEquipment = nearestObjects [_selectedContainer, ["WeaponHolderSimulated", "GroundWeaponHolder", "WeaponHolder"], 5];
		if (count _bodyEquipment > 0) then {
			_selectedEquipment = _bodyEquipment select 0;
			{_selectedEquipment addItemCargoGlobal [_x,1]} forEach (vestItems _selectedContainer);
		};
		removeVest _selectedContainer;
	};
	_selectedContainer setVariable ["busy",false];
};

if (backpack _unit == "") then {
	_needsRearm = true;
	_foundItem = false;
	_deadBodies = allDead select {(_x distance _unit < _maxDistance) && (!(_x getVariable ["busy",false]))};
	{
		_selectedBody = _x;
		if ((backpack _selectedBody != "") && (_unit distance _selectedBody < _maxDistance)) then {
			_selectedContainer = _selectedBody;
			_foundItem = true;
		};
	} forEach _deadBodies;
	if ((_foundItem) && (_unit getVariable "rearming")) then {
		_unit stop false;
		_selectedContainer setVariable ["busy",true];
		_unit doMove (getPosATL _selectedContainer);
		if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_backpack"};
		_timeOut = time + 60;
		waitUntil {sleep 1; !([_unit] call A3A_fnc_canFight) || (isNull _selectedContainer) || (_unit distance _selectedContainer < 3) || (_timeOut < time) || (unitReady _unit)};
		if (_unit distance _selectedContainer < 3) then {
			_unit addBackPackGlobal ((backpack _selectedContainer) call A3A_fnc_basicBackpack);
			_unit action ["rearm",_selectedContainer];
			_bodyEquipment = nearestObjects [_selectedContainer, ["WeaponHolderSimulated", "GroundWeaponHolder", "WeaponHolder"], 5];
			if (count _bodyEquipment > 0) then {
				_selectedEquipment = _bodyEquipment select 0;
				{_selectedEquipment addItemCargoGlobal [_x,1]} forEach (backpackItems _selectedContainer);
			};
			removeBackpackGlobal _selectedContainer;
		};
		_selectedContainer setVariable ["busy",false];
	};
};

_unit doFollow (leader _unit);
if (!_needsRearm) then {if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearm_no_need"}} else {if (_inPlayerGroup) then {_unit groupChat localize "STR_chats_autoloot_rearm_done"}};
_unit setVariable ["rearming",false];
