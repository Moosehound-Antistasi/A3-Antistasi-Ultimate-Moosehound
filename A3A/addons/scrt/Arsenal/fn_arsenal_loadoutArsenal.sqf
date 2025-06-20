/*
    By Socrates, based on Jeroen Notenbomer arsenal code, modified by jwoodruff40 to add loaded mag editing

	overwrites default arsenal script, original arsenal needs to be running first in order to initilize the display.

    fuctions:
    ["Preload"] call SCRT_fnc_arsenal_loadoutArsenal;
    	preloads the arsenal like the default arsenal but it doesnt have "BIS_fnc_endLoadingScreen" so you dont have errors
    ["customInit", "arsenalDisplay"] call SCRT_fnc_arsenal_loadoutArsenal;
    	overwrites all functions in the arsenal with JNA ones.
*/
#include "..\defines.inc"
FIX_LINE_NUMBERS()

#include "\A3\ui_f\hpp\defineDIKCodes.inc"
#include "\A3\Ui_f\hpp\defineResinclDesign.inc"

#define FADE_DELAY	0.15

#define MODLIST ["","curator","kart","heli","mark","expansion","expansionpremium"]

#define GETDLC\
	{\
		private _dlc = "";\
		private _addons = configsourceaddonlist _this;\
		if (count _addons > 0) then {\
			private _mods = configsourcemodlist (configfile >> "CfgPatches" >> _addons select 0);\
			if (count _mods > 0) then {\
				_dlc = _mods select 0;\
			};\
		};\
		_dlc\
	};

#define ADDMODICON\
	{\
		private _dlcName = _this call GETDLC;\
		if (_dlcName != "") then {\
			_ctrlList lbsetpictureright [_lbAdd,(modParams [_dlcName,["logo"]]) param [0,""]];\
			_modID = MODLIST find _dlcName;\
			if (_modID < 0) then {_modID = MODLIST pushback _dlcName;};\
			_ctrlList lbsetvalue [_lbAdd,_modID];\
		};\
	};

#define IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG 201
#define IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2 202

#define IDCS_LEFT\
	IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,\
	IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,\
	IDC_RSCDISPLAYARSENAL_TAB_HANDGUN,\
	IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,\
	IDC_RSCDISPLAYARSENAL_TAB_VEST,\
	IDC_RSCDISPLAYARSENAL_TAB_BACKPACK,\
	IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR,\
	IDC_RSCDISPLAYARSENAL_TAB_GOGGLES,\
	IDC_RSCDISPLAYARSENAL_TAB_NVGS,\
	IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS,\
	IDC_RSCDISPLAYARSENAL_TAB_MAP,\
	IDC_RSCDISPLAYARSENAL_TAB_GPS,\
	IDC_RSCDISPLAYARSENAL_TAB_RADIO,\
	IDC_RSCDISPLAYARSENAL_TAB_COMPASS,\
	IDC_RSCDISPLAYARSENAL_TAB_WATCH

#define IDCS_RIGHT\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD,\
	IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG,\
	IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC\

#define IDCS	[IDCS_LEFT,IDCS_RIGHT]

#define INITTYPES\
		_types = [];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,["Uniform"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_VEST,["Vest"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_BACKPACK,["Backpack"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR,["Headgear"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_GOGGLES,["Glasses"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_NVGS,["NVGoggles"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS,["Binocular","LaserDesignator"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,["AssaultRifle","MachineGun","SniperRifle","Shotgun","Rifle","SubmachineGun"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,["Launcher","MissileLauncher","RocketLauncher"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_HANDGUN,["Handgun"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_MAP,["Map"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_GPS,["GPS","UAVTerminal"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_RADIO,["Radio"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_COMPASS,["Compass"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_WATCH,["Watch"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_FACE,[]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_VOICE,[]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_INSIGNIA,[]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,["AccessorySights"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,["AccessoryPointer"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,["AccessoryMuzzle"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD,["AccessoryBipod"]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,[]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,[]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,[/*"Grenade","SmokeShell"*/]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,[/*"Mine","MineBounding","MineDirectional"*/]];\
		_types set [IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC,["FirstAidKit","Medikit","MineDetector","ToolKit"]];

#define STATS_WEAPONS\
	["reloadtime","dispersion","maxzeroing","hit","mass","initSpeed"],\
	[true,true,false,true,false,false]

#define STATS_EQUIPMENT\
	["passthrough","armor","maximumLoad","mass"],\
	[false,false,false,false]

#define ERROR if !(_item in _disabledItems) then {_disabledItems set [count _disabledItems,_item];};

#define SORT_DEFAULT 0
#define SORT_AMOUNT 1
#define SORT_ALPHABETICAL 2
#define SORT_COLOR 3
#define SORT_MOD 4

#define FORBIDDEN_ITEM_COLOR [0.6901, 0, 0.1254, 0.8]
#define LIMITED_ITEM_COLOR [1, 1, 0, 0.8]
#define INITIAL_EQUIPMENT_COLOR [0.784,0.784,0.784,0.8]
#define INCOMPATIBLE_ITEM_COLOR [1,1,1,0.25]
#define DEFAULT_COLOR [1,1,1,1]

disableserialization;

_arrayContains = {
	private _item = toLower(param [1]);
	(param[0]) findIf { toLower(_x) == _item } != -1
};

// Calculate the minimum number of an item needed before non-members can take it
private _minItemsMember = {
	params ["_index", "_item"];					// Arsenal tab index, item classname
	if (_index in [IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG, IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2]) then { _index = IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG };
	private _min = jna_minItemMember select _index;
	if (_index in [IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG, IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL]) then {
		_min = _min * getNumber (configfile >> "CfgMagazines" >> _item >> "count");
	};
	_min;
};

private _arrayAdd = {
	params ["_arr1", "_arr2"];

	if (count _arr1 != count _arr2) exitWith { [] };
	_newArr = [];
	for "_i" from 0 to (count _arr1 -1) do {
		_newArr set [_i, (_arr1 select _i) + (_arr2 select _i)];
	};
	_newArr;
};

// loop all magazines and find usable
private _getUsableMagazines = {
	params ["_usableMagazines"];
	_magazines = [];
	{
		_itemAvailable = _x select 0;
		_amountAvailable = _x select 1;

		if([_usableMagazines, _itemAvailable] call _arrayContains) then {
			_magazines set [count _magazines,[_itemAvailable, _amountAvailable]];
		};
	} forEach (jna_dataList select IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL);
	//return
	_magazines;
};

_mode = [_this,0,"Open",[displaynull,""]] call bis_fnc_param;
_this = [_this,1,[]] call bis_fnc_param;

switch _mode do {

	/////////////////////////////////////////////////////////////////////////////////////////// Externaly called
	case "Preload": {
		private ["_data"];

		INITTYPES

		_data = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];

		_configArray = (
			("isclass _x" configclasses (configfile >> "cfgweapons")) +
			("isclass _x" configclasses (configfile >> "cfgvehicles")) +
			("isclass _x" configclasses (configfile >> "cfgglasses"))
		);

		{
			_class = _x;
			_className = configname _x;
			_scope = if (isnumber (_class >> "scopeArsenal")) then {getnumber (_class >> "scopeArsenal")} else {getnumber (_class >> "scope")};
			_isBase = if (isarray (_x >> "muzzles")) then {(_className call bis_fnc_baseWeapon == _className)} else {true}; //-- Check if base weapon (true for all entity types)
			if (_scope == 2 && {gettext (_class >> "model") != ""} && _isBase) then {
				private ["_weaponType","_weaponTypeCategory"];
				_weaponType = (_className call bis_fnc_itemType);
				_weaponTypeCategory = _weaponType select 0;
				if (_weaponTypeCategory != "VehicleWeapon") then {
					private ["_weaponTypeSpecific","_weaponTypeID"];
					_weaponTypeSpecific = _weaponType select 1;
					_weaponTypeID = -1;
					{
						if (_weaponTypeSpecific in _x) exitwith {_weaponTypeID = _foreachindex;};
					} foreach _types;
					if (_weaponTypeID >= 0) then {
						private ["_items"];
						_items = _data select _weaponTypeID;
						_items set [count _items,configname _class];
					};
				};
			};
		} foreach _configArray;

		if false then{
			//--- Faces
			{
				private ["_index"];
				_index = _foreachindex;
				{
					if (getnumber (_x >> "disabled") == 0 && gettext (_x >> "head") != "" && configname _x != "Default") then {
						private ["_items"];
						_items = _data select IDC_RSCDISPLAYARSENAL_TAB_FACE;
						_items set [count _items,[_x,_index]];
					};
				} foreach ("isclass _x" configclasses _x);
			} foreach ("isclass _x" configclasses (configfile >> "cfgfaces"));

			//--- Voices
			{
				_scope = if (isnumber (_x >> "scopeArsenal")) then {getnumber (_x >> "scopeArsenal")} else {getnumber (_x >> "scope")};
				if (_scope == 2 && gettext (_x >> "protocol") != "RadioProtocolBase") then {
					private ["_items"];
					_items = _data select IDC_RSCDISPLAYARSENAL_TAB_VOICE;
					_items set [count _items,configname _x];
				};
			} foreach ("isclass _x" configclasses (configfile >> "cfgvoice"));

			//--- Insignia
			{
				private ["_items"];
				_scope = if (isnumber (_x >> "scope")) then {getnumber (_x >> "scope")} else {2};
				if (_scope == 2) then {
					_items = _data select IDC_RSCDISPLAYARSENAL_TAB_INSIGNIA;
					_items set [count _items,configname _x];
				};
			} foreach ("isclass _x" configclasses (configfile >> "cfgunitinsignia"));
		};

		//--- Magazines - Put and Throw
		_magazinesThrowPut = [];
		{
			private _weapon = _x select 0;
			private _tab = _x select 1;
			private _magazines = [];
			{
				{
					private _mag = _x;
					if ({_x == _mag} count _magazines == 0) then {
						private ["_cfgMag"];
						_magazines set [count _magazines,_mag];
						_cfgMag = configfile >> "cfgmagazines" >> _mag;
						if (getnumber (_cfgMag >> "scope") == 2 || getnumber (_cfgMag >> "scopeArsenal") == 2) then {
							private ["_items"];
							_items = _data select _tab;
							_items pushback configname _cfgMag;
							_magazinesThrowPut pushback tolower _mag;
						};
					};
				} foreach getarray (_x >> "magazines");
			} foreach ("isclass _x" configclasses (configfile >> "cfgweapons" >> _weapon));
		} foreach [
			["throw",IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW],
			["put",IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT]
		];

		//--- Magazines
		{
			if (getnumber (_x >> "type") > 0 && {(getnumber (_x >> "scope") == 2 || getnumber (_x >> "scopeArsenal") == 2) && {!(tolower configname _x in _magazinesThrowPut)}}) then {
				private _items = _data select IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
				_items pushback configname _x;
			};
		} foreach ("isclass _x" configclasses (configfile >> "cfgmagazines"));

		missionnamespace setvariable ["bis_fnc_arsenal_data",_data];
	};

	/////////////////////////////////////////////////////////////////////////////////////////// Externaly called
	case "Open": {
		diag_log "JNA open arsenal";
		jna_dataList = _this select 0;
		["SaveTFAR"] call SCRT_fnc_arsenal_loadoutArsenal;
		private _object = missionnamespace getVariable ["jna_object",objNull];
		["Open",[nil,_object,player,false]] call bis_fnc_arsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "CustomControls":{
		// Add controls for active weapon magazine(s) button(s)
		_display = _this select 0;

		// Base tabs
		_ctrlItemOptic = _display displayCtrl (IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC);
		_ctrlItemOpticPos = ctrlPosition _ctrlItemOptic;
		_ctrlItemAcc = _display displayCtrl (IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_ITEMACC);
		_ctrlItemAccPos = ctrlPosition _ctrlItemAcc;
		_ctrlItemMuzzle = _display displayCtrl (IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE);
		_ctrlItemBipod = _display displayCtrl (IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD);
		_posDiff = ([_ctrlItemAccPos, _ctrlItemOpticPos apply {_x * -1}] call _arrayAdd) apply {_x * 2};

		// Custom tabs
		_ctrlTabLoadedMag = _display ctrlCreate ["RscButtonArsenal", IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG];
		_ctrlTabLoadedMag ctrlSetText "a3\ui_f\data\gui\rsc\rscdisplayarsenal\cargoMag_ca.paa";
		_ctrlTabLoadedMag ctrlSetTooltip "Loaded Magazine (Primary Muzzle)";
		_ctrlTabLoadedMag ctrlSetPosition _ctrlItemOpticPos;
		_ctrlTabLoadedMag2 = _display ctrlCreate ["RscButtonArsenal", IDC_RSCDISPLAYARSENAL_TAB + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2];
		_ctrlTabLoadedMag2 ctrlSetText "a3\ui_f\data\gui\rsc\rscdisplayarsenal\cargoMisc_ca.paa";
		_ctrlTabLoadedMag2 ctrlSetTooltip "Loaded Magazine (Secondary Muzzle)";
		_ctrlTabLoadedMag2 ctrlSetPosition _ctrlItemAccPos;
		{
			_x ctrlEnable false;
			_x ctrlSetFade 1;
			_x ctrlCommit 0;
		} forEach [_ctrlTabLoadedMag, _ctrlTabLoadedMag2];

		// Move base tabs below the new magazine tabs
		{
			_newPos = [ctrlPosition _x, _posDiff] call _arrayAdd;
			_x ctrlSetPosition _newPos;
		} forEach [_ctrlItemOptic, _ctrlItemAcc, _ctrlItemMuzzle, _ctrlItemBipod];

		// Custom lists
		_ctrlListItemOptic = _display displayCtrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC);
		_ctrlListItemOpticPos = ctrlPosition _ctrlListItemOptic;
		_ctrlListLoadedMag = _display ctrlCreate ["RscListBox", IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG];
		_ctrlListLoadedMag2 = _display ctrlCreate ["RscListBox", IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2];
		{
			_x ctrlSetPosition _ctrlListItemOpticPos;
			_x ctrlEnable false;
			_x ctrlSetFade 1;
			_x ctrlCommit 0;
		} forEach [_ctrlListLoadedMag, _ctrlListLoadedMag2];

		// Custom sorts
		_ctrlSortItemOptic = _display displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC);
		_ctrlSortItemOpticPos = ctrlPosition _ctrlSortItemOptic;
		_ctrlSortLoadedMag = _display ctrlCreate ["RscCombo", IDC_RSCDISPLAYARSENAL_SORT + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG];
		_ctrlSortLoadedMag2 = _display ctrlCreate ["RscCombo", IDC_RSCDISPLAYARSENAL_SORT + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2];
		{
			_x ctrlSetPosition _ctrlSortItemOpticPos;
			_x ctrlEnable false;
			_x ctrlSetFade 1;
			_x ctrlCommit 0;
		} forEach [_ctrlSortLoadedMag, _ctrlSortLoadedMag2];
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "CustomInit":{
		_display = _this select 0;
		["ReplaceBaseItems",[_display]] call SCRT_fnc_arsenal_loadoutArsenal;
		["CustomControls", [_display]] call SCRT_fnc_arsenal_loadoutArsenal;
		["customEvents",[_display]] call SCRT_fnc_arsenal_loadoutArsenal;
		["CreateListAll", [_display]] call SCRT_fnc_arsenal_loadoutArsenal;
		["HighlightMissingIcons",[_display]] call SCRT_fnc_arsenal_loadoutArsenal;
		["applyInitialLoadout"] call SCRT_fnc_arsenal_loadoutArsenal;

		["jn_fnc_arsenal"] call BIS_fnc_endLoadingScreen;
	};
	///////////////////////////////////////////////////////////////////////////////////////////

	case "SaveTFAR": {
		jna_backpackRadioSettings = nil;
		jna_swRadioSettings = nil;
		if (A3A_hasTFAR) then {
			private _backpackRadio = player call TFAR_fnc_backpackLr;
			if (!isNil "_backpackRadio" && {count _backpackRadio >= 2}) then {
				jna_backpackRadioSettings = _backpackRadio call TFAR_fnc_getLrSettings;
			};
			private _swRadio = if (call TFAR_fnc_haveSWRadio) then { call TFAR_fnc_activeSwRadio } else { nil };
			if (!isNil "_swRadio") then {
				jna_swRadioSettings = _swRadio call TFAR_fnc_getSwSettings;
			};
		};
	};

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//Restore TFAR radio settings

	case "RestoreTFAR": {
		if (A3A_hasTFAR) then {
			private _backpackRadio = player call TFAR_fnc_backpackLr;
			if (!isNil "_backpackRadio" && {count _backpackRadio >= 2}) then {
				if (isNil "jna_backpackRadioSettings" || {typeName jna_backpackRadioSettings != typeName []}) exitWith {
					diag_log "[Antistasi] Error: Arsenal failed to restore TFAR longrange radio settings due to invalid saved setting";
				};
				[_backpackRadio select 0, _backpackRadio select 1, jna_backpackRadioSettings] call TFAR_fnc_setLrSettings;
				diag_log "[Antistasi] TFAR longrange radio settings restored on arsenal exit.";
			} else {
				diag_log "[Antistasi] No longrange radio found on arsenal exit.";
			};
			//Arsenal gives players base TFAR radio items. TFAR will, at some point, replace this with an 'instanced' version.
			//This can cause freq to reset. To fix, check if we have a radio first, and wait around if we do, but TFAR isn't showing it.
			//Spawn so we can sleep without bothering the arsenal.
			private _hasRadio = player call A3A_fnc_hasARadio;
			if (_hasRadio) then {
				[] spawn {
					//Wait around until TFAR has done its work. Frequent checks - we shouldn't have to wait more than a handful of seconds for TFAR;
					waitUntil {sleep 1; player call A3A_fnc_hasARadio && call TFAR_fnc_haveSWRadio};
					private _swRadio = if (call TFAR_fnc_haveSWRadio) then { call TFAR_fnc_activeSwRadio } else { nil };
					//Doesn't hurt to be careful!
					if (!isNil "_swRadio") then {
						if (isNil "jna_swRadioSettings" || {typeName jna_swRadioSettings != typeName []}) exitWith {
							diag_log "[Antistasi] Error: Arsenal failed to restore TFAR shortwave radio settings due to invalid saved setting";
						};
						[_swRadio, jna_swRadioSettings] call TFAR_fnc_setSwSettings;
						diag_log "[Antistasi] TFAR shortwave radio settings restored on arsenal exit.";
					} else {
						diag_log "[Antistasi] No shortwave radio found on arsenal exit.";
					};
				};
			};
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "customEvents":{
		_display = _this select 0;

		//Keys
		_display displayRemoveAllEventHandlers "keydown";
		_display displayRemoveAllEventHandlers "keyup";
		_display displayAddEventHandler ["keydown",{['KeyDown',_this] call SCRT_fnc_arsenal_loadoutArsenal;}];
		_display displayAddEventHandler ["keyup",{['KeyUp',_this] call SCRT_fnc_arsenal_loadoutArsenal;}];
		//--- UI event handlers
		_ctrlButtonClose = _display displayctrl (getnumber (configfile >> "RscDisplayArsenal" >> "Controls" >> "ControlBar" >> "controls" >> "ButtonClose" >> "idc"));
		_ctrlButtonClose ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonClose ctrladdeventhandler ["buttonclick",{["buttonClose",[ctrlparent (_this select 0)]] call SCRT_fnc_arsenal_loadoutArsenal;}];

		_ctrlButtonLoad = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONLOAD;
		_ctrlButtonLoad ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonLoad ctrlSetText "";
		_ctrlButtonLoad ctrlSetTooltip "";

		_ctrlTemplateButtonOK = _display displayctrl IDC_RSCDISPLAYARSENAL_TEMPLATE_BUTTONOK;
		_ctrlTemplateButtonOK ctrlRemoveAllEventHandlers "buttonclick";

		_ctrlTemplateButtonDelete = _display displayctrl IDC_RSCDISPLAYARSENAL_TEMPLATE_BUTTONDELETE;
		_ctrlTemplateButtonDelete ctrlRemoveAllEventHandlers "buttonclick";

		_ctrlButtonSetLoadout = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONIMPORT;
		_ctrlButtonSetLoadout ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonSetLoadout ctrlSetText localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_button";
		_ctrlButtonSetLoadout ctrlEnable true;
		_ctrlButtonSetLoadout ctrlSetTooltip localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_tooltip";
		_ctrlButtonSetLoadout ctrlAddEventHandler ["buttonclick",{["buttonSetLoadoutMenu",[ctrlparent (_this select 0)]] call SCRT_fnc_arsenal_loadoutArsenal;}];

		_ctrlButtonImport = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONEXPORT;
		_ctrlButtonImport ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonImport ctrlSetText "";
		_ctrlButtonImport ctrlSetTooltip "";

		_ctrlButtonSave = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONSAVE;
		_ctrlButtonSave ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonSave ctrlSetText "";
		_ctrlButtonSave ctrlSetTooltip "";

		_ctrlButtonRandom = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONRANDOM;
		_ctrlButtonRandom ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlButtonRandom ctrlSetText "";
		_ctrlButtonRandom ctrlSetTooltip "";

		_ctrlArrowLeft = _display displayctrl IDC_RSCDISPLAYARSENAL_ARROWLEFT;
		_ctrlArrowLeft ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlArrowLeft ctrladdeventhandler ["buttonclick",{["buttonCargo",[ctrlparent (_this select 0),-1]] call SCRT_fnc_arsenal_loadoutArsenal;}];

		_ctrlArrowRight = _display displayctrl IDC_RSCDISPLAYARSENAL_ARROWRIGHT;
		_ctrlArrowRight ctrlRemoveAllEventHandlers "buttonclick";
		_ctrlArrowRight ctrladdeventhandler ["buttonclick",{["buttonCargo",[ctrlparent (_this select 0),+1]] call SCRT_fnc_arsenal_loadoutArsenal;}];

		_ctrlTemplateValue = _display displayctrl IDC_RSCDISPLAYARSENAL_TEMPLATE_VALUENAME;
		_ctrlTemplateValue ctrlRemoveAllEventHandlers "lbdblclick";

		//disable annoying deselecting of tabs when you misclick
		_ctrlMouseArea = _display displayctrl IDC_RSCDISPLAYARSENAL_MOUSEAREA;
		_ctrlMouseArea ctrlRemoveEventHandler ["mousebuttonclick",0];

		_ctrlButtonInterface = _display displayctrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONINTERFACE;
		_ctrlButtonInterface ctrlRemoveAllEventHandlers "buttonclick";

		//--- Menus
		_sortValues = uinamespace getvariable ["jn_fnc_arsenal_sort",[]];
		{
			_idc = _x;

			_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _idc);
			_ctrlList ctrlRemoveAllEventHandlers "LBSelChanged";
			_ctrlList ctrlAddEventHandler ["MouseButtonUp",	{uiNamespace setvariable ['jna_userInput',true];}];
			_ctrlList ctrlAddEventHandler ["LBSelChanged",	format ["
				if(uiNamespace getvariable ['jna_userInput',false])then{
					['SelectItem',[ctrlparent (_this select 0),(_this select 0),%1]] call SCRT_fnc_arsenal_loadoutArsenal;
					uiNamespace setvariable ['jna_userInput',false];
				};
			",_idc]];


			_ctrlIcon = _display displayctrl (IDC_RSCDISPLAYARSENAL_ICON + _idc);
			_ctrlTab = _display displayctrl (IDC_RSCDISPLAYARSENAL_TAB + _idc);
			{
				_x ctrlRemoveAllEventHandlers "buttonclick";
				if (_idc in [IDCS_LEFT]) then {
					_x ctrladdeventhandler ["buttonclick",format ["['TabSelectLeft',[ctrlparent (_this select 0),%1],true] call SCRT_fnc_arsenal_loadoutArsenal;",_idc]];
				} else {
					_x ctrladdeventhandler ["buttonclick",format ["['TabSelectRight',[ctrlparent (_this select 0),%1],true] call SCRT_fnc_arsenal_loadoutArsenal;",_idc]];
				};
			} foreach [_ctrlIcon,_ctrlTab];

			//sort
			_sort = _sortValues param [_idc, SORT_DEFAULT];
			_ctrlSort = _display displayctrl (IDC_RSCDISPLAYARSENAL_SORT + _idc);
			_ctrlSort ctrlRemoveAllEventHandlers "lbselchanged";
			_ctrlSort ctrladdeventhandler ["lbselchanged",format ["['SortBy',[_this,%1]] call SCRT_fnc_arsenal_loadoutArsenal;",_idc]];

      //Delete "Sort by mod" as it doesn't work currently.
      if (lbSize _ctrlSort > 1) then {
        _ctrlSort lbDelete 1;
      };


	  private _sortByAmountIndex = _ctrlSort lbadd (localize "STR_JNA_SORT_BY_AMOUNT");
      private _sortDefaultIndex = _ctrlSort lbadd (localize "STR_JNA_SORT_DEFAULT");
	private _sortColorIndex = _ctrlSort lbadd (localize "STR_JNA_SORT_COLOR");
	  private _sortModIndex = _ctrlSort lbadd (localize "STR_JNA_SORT_MOD");

      _ctrlSort lbSetValue [0, SORT_ALPHABETICAL];
      _ctrlSort lbSetValue [_sortByAmountIndex, SORT_AMOUNT];
      _ctrlSort lbSetValue [_sortDefaultIndex, SORT_DEFAULT];
	  _ctrlSort lbSetValue [_sortColorIndex, SORT_COLOR];
	  _ctrlSort lbSetValue [_sortModIndex, SORT_MOD];

      lbSortByValue _ctrlSort;

			_ctrlSort lbsetcursel _sort;
			_sortValues set [_idc,_sort];

		} foreach IDCS;
		uinamespace setvariable ["jn_fnc_arsenal_sort",_sortValues];
	};

  case "SortBy":{
    _this params ["_eventParams", "_currentTabIdc"];
    _eventParams params ["_ctrlSort", "_selectedIndex"];

    private _display = ctrlParent _ctrlSort;
    private _ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _currentTabIdc);
    private _type = (ctrltype _ctrlList == 102);

    private _itemCount = lbSize _ctrlList;


    private _sortType = _ctrlSort lbValue _selectedIndex;

    switch (_sortType) do {
      case SORT_ALPHABETICAL: {
        private _displayNameArray = [];
        private _dataArray = [];

        //Iterate in reverse order to avoid a lot of array resizes in _dataArray;
        for "_i" from (_itemCount - 1) to 0 step -1 do {
          private _dataStr = if _type then{_ctrlList lnbdata [_i,0]}else{_ctrlList lbdata _i};

          if (_dataStr != "") then {
            private _data = call compile _dataStr;
            private _item = _data select 0;
            private _amount = _data select 1;
            private _displayName = _data select 2;

            _displayNameArray pushBack _displayName;
            _dataArray set [_i, _data];
          };
        };

        _displayNameArray sort true;

        for "_i" from 0 to (_itemCount - 1) do {
          private _data = _dataArray select _i;
          if (!isNil "_data") then {
            private _displayName = _data select 2;
            _ctrlList lbSetValue [_i, _displayNameArray find _displayName];
          };
        };

        lbSortByValue _ctrlList;
      };
	  case SORT_MOD: {
	    private _displayNameArray = [];
		private _modArray = [];
	    private _dataArray = [];
	  
	    for "_i" from (_itemCount - 1) to 0 step -1 do {
	        private _dataStr = if _type then {_ctrlList lnbdata [_i,0]} else {_ctrlList lbdata _i};
	  
	        if (_dataStr != "") then {
	            private _data = call compile _dataStr;
	            private _item = _data select 0;
	            private _amount = _data select 1;
	            private _displayName = _data select 2;
	            private _dlcName = _data select 3;
				diag_log _dlcName;
	  
	            _displayNameArray pushBack _displayName;
				_modArray pushBack _dlcName;
	            _dataArray set [_i, _data];
	        };
	    };
	  
	    _modArray sort true;

	    for "_i" from 0 to (_itemCount - 1) do {
	        private _data = _dataArray select _i;
	  
	        if (!isNil "_data") then {
	            private _dlcName = _data select 3;
	            _ctrlList lbSetValue [_i, _modArray find _dlcName];
	        };
	    };
	  
	    lbSortByValue _ctrlList;
	  };
	  case SORT_COLOR: {
			private _displayNameArray = [];
			private _dataArray = [];
			
			private _tempArr = [];

			//Iterate in reverse order to avoid a lot of array resizes in _dataArray;
			for "_i" from (_itemCount - 1) to 0 step -1 do {
				private _dataStr = if _type then{_ctrlList lnbdata [_i,0]}else{_ctrlList lbdata _i};

				if (_dataStr != "") then {
					private _data = call compile _dataStr;
					private _item = _data select 0;
					private _displayName = _data select 2;

					private _color = (if _type then {_ctrlList lnbColor [_i, 1]} else {_ctrlList lbColor _i}) apply {_x toFixed 1};
					private _sortValue = switch (true) do {
						case (_color isEqualTo (INCOMPATIBLE_ITEM_COLOR apply {_x toFixed 1})): {
							0
						};
						case (_color isEqualTo (FORBIDDEN_ITEM_COLOR apply {_x toFixed 1})): {
							2
						};
						case (_color isEqualTo (LIMITED_ITEM_COLOR apply {_x toFixed 1})): {
							4
						};
						case (_color isEqualTo (INITIAL_EQUIPMENT_COLOR apply {_x toFixed 1})): {
							8
						};
						default {
							16
						};
					};

					_displayNameArray pushBack [_displayName, _sortValue];
					_dataArray set [_i, _data];
				};
			};

			_displayNameArray = ([_displayNameArray, [], {_x select 1}, "DESCEND"] call BIS_fnc_sortBy) apply {_x select 0};

			for "_i" from 0 to (_itemCount - 1) do {
				private _data = _dataArray select _i;
				if (!isNil "_data") then {
					private _displayName = _data select 2;
					_ctrlList lbSetValue [_i, _displayNameArray find _displayName];
				};
			};

			lbSortByValue _ctrlList;
    	};
      case SORT_AMOUNT: {
        for "_i" from 0 to (_itemCount - 1) do {
           private _dataStr = if _type then {_ctrlList lnbdata [_i,0]} else {_ctrlList lbdata _i};

          if (_dataStr != "") then {
            private _data = call compile _dataStr;
            private _item = _data select 0;
            private _amount = _data select 1;
            private _displayName = _data select 2;

            //If it's the description string, then make sure it's first.
            if (_item == "") then {
              _amount = -100;
            };

            _ctrlList lbSetValue [_i, _amount];
          };

          lbSortByValue _ctrlList;
        };
      };
      case SORT_DEFAULT: {
        lbSort _ctrlList;
      };
  };

  };

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ReplaceBaseItems":{

		//replace all items to base type
		_loadout = getUnitLoadout player;//this crap doesnt save weapon attachments in containers

			_unifrom = _loadout select 3;
			_vest = _loadout select 4;
			_backpack = _loadout select 5;

			_primaryweapon = _loadout select 0;
			_secondaryweapon = _loadout select 1;
			_handgunweapon = _loadout select 2;

			_primaryweapon set [0,((_primaryweapon select 0) call BIS_fnc_baseWeapon)];
			_secondaryweapon set [0,((_secondaryweapon select 0) call BIS_fnc_baseWeapon)];
			_handgunweapon set [0,((_handgunweapon select 0) call BIS_fnc_baseWeapon)];

			//Some mod backpacks have no empty variant
			if (count _backpack > 0) then {
				_backpack set [0,((_backpack select 0) call A3A_fnc_basicBackpack)];
			};

			_uniformitems = [_unifrom,1,[]] call BIS_fnc_param;
			_vestitems = [_vest,1,[]] call BIS_fnc_param;
			_backpackitems = [_backpack,1,[]] call BIS_fnc_param;
			{
				{
					_item = [_x,0,[]] call BIS_fnc_param;
					_itemname = [_item,0,""] call BIS_fnc_param;
					if(typeName _item isequalto "ARRAY")then {
						if(typeName _itemname isequalto "STRING")then {
							if ( isClass (configFile >> "CFGweapons" >> _itemname)) then {
								_item set [0,(_itemname call bis_fnc_baseWeapon)];
							};
						;}
					};
				}foreach _x;
			}foreach [_uniformitems,_vestitems,_backpackitems]; //loop items in backpack
		player setUnitLoadout _loadout;

		//re-add attachmets, saved before opening arsenal
		{
			_container = _x;
			{
				_container addItemCargoGlobal [_x,1];
			} forEach ((missionNamespace getVariable "jna_containerCargo_init") select _foreachindex);
		} forEach [uniformContainer player,vestContainer player,backpackContainer player];

		//replace magazines with partial filled, just like it was before entering the box, entering the arsenal refilles all ammo
		// Do this after setUnitLoadout, because that fills magazines when you have >1 with the same bullet count (BIS bug)
		_mags = missionNamespace getVariable "jna_magazines_init";//get ammo list from before arsenal started
		{
			if!(isnil "_x")then{
				_container = switch _foreachindex do{
					case 0: {uniformContainer player;};
					case 1: {vestContainer player;};
					case 2: {backpackContainer player;};
				};
				clearMagazineCargoGlobal _container;
				{
					_item = _x select 0;
					_amount = _x select 1;
					_container addMagazineAmmoCargo [_item,1,_amount];
				}forEach _x;
			};
		} forEach _mags;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "TabSelectLeft": {
		_display = _this select 0;
		_index = _this select 1;
		_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);
		//create list
		["UpdateListGui",[ _display,_ctrlList,_index]] call SCRT_fnc_arsenal_loadoutArsenal;


		//add current selected items
		_inventory_player = ["ListCurSel",[_index]] call SCRT_fnc_arsenal_loadoutArsenal;
		["UpdateItemAdd",[_index,_inventory_player,0]] call SCRT_fnc_arsenal_loadoutArsenal;


		//TODO sort (add select current item to sort?)
		["ListSelectCurrent",[_display,_index]] call SCRT_fnc_arsenal_loadoutArsenal;

		//show selected, disable others
		{
			_idc = _x;
			_active = _idc == _index;

			{
				_ctrlList = _display displayctrl (_x + _idc);
				_ctrlList ctrlenable _active;
				_ctrlList ctrlsetfade ([1,0] select _active);
				_ctrlList ctrlcommit FADE_DELAY;
			} foreach [IDC_RSCDISPLAYARSENAL_LIST,IDC_RSCDISPLAYARSENAL_SORT, IDC_RSCDISPLAYARSENAL_LISTDISABLED];

			_ctrlTab = _display displayctrl (IDC_RSCDISPLAYARSENAL_TAB + _idc);
			_ctrlTab ctrlenable !_active;

			if (_active) then {
				_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _idc);
				_ctrlLineTabLeft = _display displayctrl IDC_RSCDISPLAYARSENAL_LINETABLEFT;
				_ctrlLineTabLeft ctrlsetfade 0;
				_ctrlTabPos = ctrlposition _ctrlTab;
				_ctrlLineTabPosX = (_ctrlTabPos select 0) + (_ctrlTabPos select 2) - 0.01;
				_ctrlLineTabPosY = (_ctrlTabPos select 1);
				_ctrlLineTabLeft ctrlsetposition [
					safezoneX,//_ctrlLineTabPosX,
					_ctrlLineTabPosY,
					(ctrlposition _ctrlList select 0) - safezoneX,//_ctrlLineTabPosX,
					ctrlposition _ctrlTab select 3
				];
				_ctrlLineTabLeft ctrlcommit 0;
				ctrlsetfocus _ctrlList;
			};

			_ctrlIcon = _display displayctrl (IDC_RSCDISPLAYARSENAL_ICON + _idc);
			//_ctrlIcon ctrlsetfade ([1,0] select _active);
			_ctrlIcon ctrlshow _active;
			_ctrlIcon ctrlenable !_active;

			_ctrlIconBackground = _display displayctrl (IDC_RSCDISPLAYARSENAL_ICONBACKGROUND + _idc);
			_ctrlIconBackground ctrlshow _active;
		} foreach [IDCS_LEFT];

		//Show left list background
		{
			_ctrl = _display displayctrl _x;
			_ctrl ctrlsetfade 0;
			_ctrl ctrlcommit FADE_DELAY;
		} foreach [
			IDC_RSCDISPLAYARSENAL_LINETABLEFT,
			IDC_RSCDISPLAYARSENAL_FRAMELEFT,
			IDC_RSCDISPLAYARSENAL_BACKGROUNDLEFT
		];

		//--- Weapon magazines and attachments
		_showItems = _index in [IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,IDC_RSCDISPLAYARSENAL_TAB_HANDGUN];
		_fadeItems = [1,0] select _showItems;
		{
			_idc = _x;
			_ctrl = _display displayctrl (IDC_RSCDISPLAYARSENAL_TAB + _idc);
			_ctrl ctrlenable _showItems;
			_ctrl ctrlsetfade _fadeItems;
			_ctrl ctrlcommit 0;//FADE_DELAY;
			{
				_ctrl = _display displayctrl (_x + _idc);
				_ctrl ctrlenable _showItems;
				_ctrl ctrlsetfade _fadeItems;
				_ctrl ctrlcommit FADE_DELAY;
			} foreach [IDC_RSCDISPLAYARSENAL_LIST,IDC_RSCDISPLAYARSENAL_LISTDISABLED,IDC_RSCDISPLAYARSENAL_SORT];
		} foreach [
			IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG,
			IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD
		];

		//Select right tab
		if (_showItems) then {
			switch true do {
				case (_index == IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON): { player selectWeapon (primaryWeapon player) };
				case (_index == IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON): { player selectWeapon (secondaryWeapon player) };
				case (_index == IDC_RSCDISPLAYARSENAL_TAB_HANDGUN): { player selectWeapon (handgunWeapon player) };
			};

			['TabSelectRight',[_display,IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG]] call SCRT_fnc_arsenal_loadoutArsenal;
		};

		//--- Containers
		_showCargo = _index in [IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,IDC_RSCDISPLAYARSENAL_TAB_VEST,IDC_RSCDISPLAYARSENAL_TAB_BACKPACK];
		_fadeCargo = [1,0] select _showCargo;
		{
			_idc = _x;
			_ctrl = _display displayctrl (IDC_RSCDISPLAYARSENAL_TAB + _idc);
			_ctrl ctrlenable _showCargo;
			_ctrl ctrlsetfade _fadeCargo;
			_ctrl ctrlcommit 0;//FADE_DELAY;
			{
				_ctrlList = _display displayctrl (_x + _idc);
				_ctrlList ctrlenable _showCargo;
				_ctrlList ctrlsetfade _fadeCargo;
				_ctrlList ctrlcommit FADE_DELAY;
			} foreach [IDC_RSCDISPLAYARSENAL_LIST,IDC_RSCDISPLAYARSENAL_LISTDISABLED];
		} foreach [
			IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,
			IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,
			IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,
			IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,
			IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC
		];
		_ctrl = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;
		_ctrl ctrlsetfade _fadeCargo;
		_ctrl ctrlcommit FADE_DELAY;
		if (_showCargo) then {
			//update weigth
			_load = switch _index do{
				case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {loaduniform player};
				case IDC_RSCDISPLAYARSENAL_TAB_VEST: {loadvest player};
				case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {loadbackpack player};
			};

			_ctrlLoadCargo = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;
			_ctrlLoadCargo progresssetposition _load;

			['TabSelectRight',[_display, IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG]] call SCRT_fnc_arsenal_loadoutArsenal;
		};


		//Show right list background
		_showRight = _showItems || _showCargo;
		_fadeRight = [1,0] select _showRight;
		{
			_ctrl = _display displayctrl _x;
			_ctrl ctrlsetfade _fadeRight;
			_ctrl ctrlcommit FADE_DELAY;
		} foreach [
			IDC_RSCDISPLAYARSENAL_LINETABRIGHT,
			IDC_RSCDISPLAYARSENAL_FRAMERIGHT,
			IDC_RSCDISPLAYARSENAL_BACKGROUNDRIGHT
		];

		private _selected = -1;
		{
			 _ctrl = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _x);
			if (ctrlenabled _ctrlList) exitwith {_selected = _x;};
		} foreach [IDCS_LEFT];

		["updateItemInfo",[_display,_ctrlList, _index]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "TabSelectRight": {
		private ["_ctrlList","_index","_cursel"];
		_display = _this select 0;
		_index = _this select 1;
		_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);
		_type = (ctrltype _ctrlList == 102);


		_inventory = switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG: {
				_usableMagazines = [];
				{
					_usableMagazines append (compatibleMagazines _x);
				} foreach (weapons player - ["Throw","Put"]);
				_usableMagazines =_usableMagazines arrayIntersect _usableMagazines;

				[_usableMagazines] call _getUsableMagazines;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG: {
				_ctrlListPrimaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON);
				_ctrlListSecondaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON);
				_ctrlListHandgun = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN);

				_weapon = switch true do {
					case (ctrlenabled _ctrlListPrimaryWeapon): {primaryWeapon player};
					case (ctrlenabled _ctrlListSecondaryWeapon): {secondaryWeapon player};
					case (ctrlenabled _ctrlListHandgun): {handgunWeapon player};
				};

				[compatibleMagazines [_weapon, "this"]] call _getUsableMagazines;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2: {
				_ctrlListPrimaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON);
				if (!ctrlEnabled _ctrlListPrimaryWeapon) exitWith { [] };
				
				_weapon = primaryWeapon player;
				// below from core\functions\Ammunition\fn_randomRifle.sqf
				// lookup real underbarrel GL magazine, because not everything is 40mm
				private _config = configFile >> "CfgWeapons" >> _weapon;
				private _glmuzzle = getArray (_config >> "muzzles") select 1;		// guaranteed by category
				_glmuzzle = configName (_config >> _glmuzzle);                      // bad-case fix. compatibleMagazines is case-sensitive as of 2.12
				[compatibleMagazines [_weapon, _glmuzzle]] call _getUsableMagazines;
			};
			default { (jna_datalist select _index) };
		};

		["CreateList",[ _display, _index, _inventory]] call SCRT_fnc_arsenal_loadoutArsenal;
		switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMACC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD: {
				_ctrlListPrimaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON);
				_ctrlListSecondaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON);
				_ctrlListHandgun = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN);

				_weaponItems = switch true do {
					case (ctrlenabled _ctrlListPrimaryWeapon): {primaryweaponitems player};
					case (ctrlenabled _ctrlListSecondaryWeapon): {secondaryweaponitems player};
					case (ctrlenabled _ctrlListHandgun): {handgunitems player};
					default {["","","",""]};
				};
				_accIndex = [
					IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD
				] find _index;

				_item = _weaponItems select _accIndex;
				["UpdateItemAdd",[_index,_item,0]] call SCRT_fnc_arsenal_loadoutArsenal;
				["ListSelectCurrent",[_display,_index,_item]] call SCRT_fnc_arsenal_loadoutArsenal;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG: {
				_item = currentMagazine player;

				["UpdateItemAdd",[_index,_item,0]] call SCRT_fnc_arsenal_loadoutArsenal;
				["ListSelectCurrent",[_display,_index,_item]] call SCRT_fnc_arsenal_loadoutArsenal;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2: {
				_weapon = primaryWeapon player;
				_weaponCfg = configFile >> "CfgWeapons" >> _weapon;
				_muzzle = configName (_weaponCfg >> (getArray (_weaponCfg >> "muzzles") select 1));
				_item = "";
				{
					if (_x in compatibleMagazines [_weapon, _muzzle]) exitWith { _item = _x};
				} forEach (primaryWeaponMagazine player);
				
				["UpdateItemAdd",[_index,_item,0]] call SCRT_fnc_arsenal_loadoutArsenal;
				["ListSelectCurrent",[_display,_index,_item]] call SCRT_fnc_arsenal_loadoutArsenal;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC:{
				_ctrlListUniform = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_UNIFORM);
				_ctrlListVest = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_VEST);
				_ctrlListBackPack = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_BACKPACK);

				_items = switch true do {
					case (ctrlenabled _ctrlListUniform): {uniformitems player;};
					case (ctrlenabled _ctrlListVest): {vestitems player;};
					case (ctrlenabled _ctrlListBackPack): {backpackitems player;};
					default {_items = [];};
				};

				_itemsUnique = [];
				{
					_type = _x call jn_fnc_arsenal_itemType;
					if(_type == _index || (_type == IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL &&  _index == IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG))then{
						_itemsUnique pushBackUnique _x;
					};
				}foreach _items;

				_inventory = if(_index == IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG)then{
					{
						{
							if([_itemsUnique, _x] call _arrayContains)then{
								["UpdateItemAdd",[_index,_x,0]] call SCRT_fnc_arsenal_loadoutArsenal;
							}
						} forEach (getarray (configfile >> "cfgweapons" >> _x >> "magazines"));
					}forEach [primaryweapon player, secondaryweapon player, handgunweapon player];
				}else{
					{
						["UpdateItemAdd",[_index,_x,0]] call SCRT_fnc_arsenal_loadoutArsenal;
					} forEach _itemsUnique;
				}
			};
		};

		["UpdateListGui",[ _display,_ctrlList,_index]] call SCRT_fnc_arsenal_loadoutArsenal;

		_ctrFrameRight = _display displayctrl IDC_RSCDISPLAYARSENAL_FRAMERIGHT;
		_ctrBackgroundRight = _display displayctrl IDC_RSCDISPLAYARSENAL_BACKGROUNDRIGHT;

		{
			_idc = _x;
			_active = _idc == _index;
			{
				_ctrlList = _display displayctrl (_x + _idc);
				_ctrlList ctrlenable _active;
				_ctrlList ctrlsetfade ([1,0] select _active);
				_ctrlList ctrlcommit FADE_DELAY;
			} foreach [IDC_RSCDISPLAYARSENAL_LIST,IDC_RSCDISPLAYARSENAL_LISTDISABLED,IDC_RSCDISPLAYARSENAL_SORT];

			_ctrlTab = _display displayctrl (IDC_RSCDISPLAYARSENAL_TAB + _idc);
			_ctrlTab ctrlenable (!_active && ctrlfade _ctrlTab == 0);

			if (_active) then {
				_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _idc);
				_ctrlLineTabRight = _display displayctrl IDC_RSCDISPLAYARSENAL_LINETABRIGHT;
				_ctrlLineTabRight ctrlsetfade 0;
				_ctrlTabPos = ctrlposition _ctrlTab;
				_ctrlLineTabPosX = (ctrlposition _ctrlList select 0) + (ctrlposition _ctrlList select 2);
				_ctrlLineTabPosY = (_ctrlTabPos select 1);
				_ctrlLineTabRight ctrlsetposition [
					_ctrlLineTabPosX,
					_ctrlLineTabPosY,
					safezoneX + safezoneW - _ctrlLineTabPosX,//(_ctrlTabPos select 0) - _ctrlLineTabPosX + 0.01,
					ctrlposition _ctrlTab select 3
				];
				_ctrlLineTabRight ctrlcommit 0;
				ctrlsetfocus _ctrlList;

				_ctrlLoadCargo = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;
				_ctrlListPos = ctrlposition _ctrlList;
				_ctrlListPos set [3,(_ctrlListPos select 3) + (ctrlposition _ctrlLoadCargo select 3)];
				{
					_x ctrlsetposition _ctrlListPos;
					_x ctrlcommit 0;
				} foreach [_ctrFrameRight,_ctrBackgroundRight];

				if (
					_idc in [
						IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,
						IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,
						IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,
						IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,
						IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC
					]
				) then {
					//to reselect same right-tab when switching between uniform vest backpack
					uiNamespace setVariable ["jna_lastCargoListSelected", _idc];

					//--- Update counts for all items in the list
					_container = switch true do {
						case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_UNIFORM))): {uniformContainer player};
						case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_VEST))): {vestContainer player};
						case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_BACKPACK))): {backpackContainer player};
						default {objNull};
					};

					_items = if (!isNull _container) then {
						if(_idc == IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC)then{
							itemCargo _container;
						} else {
							magazinesAmmoCargo _container;
						};
					} else {
						[];
					};

					for "_l" from 0 to ((lnbsize _ctrlList select 0) - 1) do {
						_dataStr = _ctrlList lnbdata [_l,0];
						_data = call compile _dataStr;
						_item = _data select 0;
						_amount = 0;
						{
							_itemX = if(_idc == IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC)then{_x}else{_x select 0};
							_amountX = if(_idc == IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC)then{1}else{_x select 1};
							if(_itemX == _item)then{
								_amount = _amount + _amountX;
							}
						} forEach _items;

						_ctrlList lnbsettext [[_l,2],str (_amount)];
					};
					["SelectItemRight",[_display,_ctrlList,_idc]] call SCRT_fnc_arsenal_loadoutArsenal;
				};
			};

			_ctrlIcon = _display displayctrl (IDC_RSCDISPLAYARSENAL_ICON + _idc);
			//_ctrlIcon ctrlenable false;
			_ctrlIcon ctrlshow _active;
			_ctrlIcon ctrlenable (!_active && ctrlfade _ctrlTab == 0);

			_ctrlIconBackground = _display displayctrl (IDC_RSCDISPLAYARSENAL_ICONBACKGROUND + _idc);
			_ctrlIconBackground ctrlshow _active;
		} foreach [IDCS_RIGHT];
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "CreateListAll":{
		_display =  _this select 0;
		_inventory_box_all = jna_dataList;
		{
			_inventory_box = _x;
			_index = _foreachindex;
			if(_index in [IDCS_LEFT])then{
				_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);
				lbclear _ctrlList;
				//create list with avalable items
				["CreateList",[_display,_index,_inventory_box]] call SCRT_fnc_arsenal_loadoutArsenal;
			};
		} forEach _inventory_box_all;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ListCurSel":{
		private _index = _this select 0;

		_return = switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {
				primaryWeapon player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON: {
				secondaryweapon player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {
				handgunweapon player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {
				uniform player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_VEST: {
				vest player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {
				backPack player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR: {
				headgear player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_GOGGLES: {
				goggles player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_NVGS: {
				hmd player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS: {
				binocular player;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_RADIO:{
				_return1 = "";
				{
					if(_index == _x call jn_fnc_arsenal_itemType)exitwith{_return1 = _x};
				}foreach assignedItems player;

				//TFAR FIX
				_radioName = getText(configfile >> "CfgWeapons" >> _return1 >> "tf_parent");
				if!(_radioName isEqualTo "")then{_return1 = _radioName};

				_return1;

				//ACRE FIX
				_radioName = getText(configfile >> "CfgVehicles" >> _return1 >> "acre_baseClass");
				if!(_radioName isEqualTo "")then{_return1 = _radioName};

				_return1;

			};
			case IDC_RSCDISPLAYARSENAL_TAB_MAP;
			case IDC_RSCDISPLAYARSENAL_TAB_GPS;
			case IDC_RSCDISPLAYARSENAL_TAB_COMPASS;
			case IDC_RSCDISPLAYARSENAL_TAB_WATCH:{
				_return1 = "";
				{
					if(_index == _x call jn_fnc_arsenal_itemType)exitwith{_return1 = _x};
				}foreach assignedItems player;
				_return1;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMACC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD: {
				private _weapon = switch true do {
					case (ctrlEnabled (_display displayCtrl IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON)): { primaryWeapon player };
					case (ctrlEnabled (_display displayCtrl IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON)): { secondaryWeapon player };
					case (ctrlEnabled (_display displayCtrl IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN)): { handgunWeapon player };
				};
				private _weaponItems = weaponsItems player select { _x select 0 isEqualTo _weapon } select 0;

				_return1 = switch (_index) do {
					case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG: { _weaponItems select 4 };
					case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2: { _weaponItems select 5 };
					case IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC: { _weaponItems select 3 };
					case IDC_RSCDISPLAYARSENAL_TAB_ITEMACC: { _weaponItems select 2 };
					case IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE: { _weaponItems select 1 };
					case IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD: { _weaponItems select 6 };
				};
				if (_return1 isEqualType []) then { 
					_return1 = if (count _return1 > 0) then { _return1 select 0 } else { "" };
				};
				_return1;
			};
		};
		_return;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ListSelectCurrent":{
		_display =  _this select 0;
		_index = _this select 1;
		_item = _this select 2;
		_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);


		if(isnil "_item")then{
			_item = ["ListCurSel",[_index]] call SCRT_fnc_arsenal_loadoutArsenal;
		};

		for "_l" from 0 to (lbsize _ctrlList - 1) do {
			_dataStr = _ctrlList lbdata _l;
			_data = call compile _dataStr;
			_item_l = _data select 0;
			if (_item isEqualTo _item_l) exitwith {
				_ctrlList lbsetcursel _l;
			};
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "CreateList":{
		_display =  _this select 0;
		_index = _this select 1;
		_inventory = _this select 2;
		_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);
		_type = (ctrltype _ctrlList == 102);
		if _type then{
			lnbclear _ctrlList;
		}else{
			lbclear _ctrlList;

			// add empty
			if!(
			_index in [
				IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,
				IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,
				IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,
				IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,
				IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC
			])then{

				//add empty
				_emptyString =  ("            Qty:    Name:          <Empty>");
				if(
					_index in [
						IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,
						IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,
						IDC_RSCDISPLAYARSENAL_TAB_HANDGUN
					]
				)then{
					_emptyString = ("           ") + _emptyString; //little longer for bigger icons
				};
				_lbAdd = _ctrlList lbadd _emptyString;
				_data = str ["",0,""];
				_ctrlList lbsetdata [_lbAdd,_data];
			};
		};

		//fill
		{
			_item = _x select 0;
			_amount = _x select 1;
			["CreateItem",[_display,_ctrlList,_index,_item,_amount]] call SCRT_fnc_arsenal_loadoutArsenal;
		} forEach _inventory;

		//TODO better sorting of scopes gray items?
		["ListSort",[_display,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ListSort":{
		_display =  _this select 0;
		_index = _this select 1;
		_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _index);
		_type = (ctrltype _ctrlList == 102);
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "UpdateListGui":{
		_display =  _this select 0;
		_ctrlList = _this select 1;
		_index = _this select 2;

		_type = (ctrltype _ctrlList == 102);
		_rows = if _type then{ (lnbsize _ctrlList select 0) - 1}else{lbsize _ctrlList - 1};
		for "_l" from 0 to _rows do {
			["UpdateItemGui",[_display,_ctrlList,_index,_l]] call SCRT_fnc_arsenal_loadoutArsenal;
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////  GLOBAL
	case "UpdateItemAdd":{
		params ["_index","_item","_amount",["_updateDataList",false]];

		//update datalist
		if(_updateDataList) then {
			jna_dataList set [_index, [jna_dataList select _index, [_item, _amount]] call jn_fnc_arsenal_addToArray];
		};

		private _display =  uiNamespace getVariable ["arsenalDisplay","No display"];

		if (typeName _display == "STRING") exitWith {};
		if(str _display isEqualTo "No display")exitWith{};

		if(_item isEqualTo "")exitWith{};

		if(_index == IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL)then{
			switch true do {
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG))): { _index = IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG; };
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG))): { _index = IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG; };
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2))): { _index = IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2; };
			};
		};

		private _indexList = _index;

		private _ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _indexList);
		private _type = (ctrltype _ctrlList == 102);
		private _cursel = if _type then{-1}else{lbCurSel _ctrlList};

		if((_index in [IDCS_RIGHT]) && !(ctrlEnabled _ctrlList)) exitWith{};

		_l_found = -1;
		_rowSize = if _type then{((lnbSize _ctrlList select 0) - 1);}else{(lbsize _ctrlList - 1);};
		for "_l" from 0 to _rowSize do {
			_dataStr = if _type then{_ctrlList lnbdata [_l,0]}else{_ctrlList lbdata _l};
			_dataCurrent = call compile _dataStr;
			_itemCurrent = _dataCurrent select 0;
			_amountCurrent = _dataCurrent select 1;
			_displayNameCurrent = _dataCurrent select 2;
			if(_item isEqualTo _itemCurrent)exitWith{
				_l_found = _l;
				if(_amount == -1 || {_amountCurrent == -1})then{
					_amount = -1;
				}else{
					_amount =_amountCurrent + _amount;
				};
				_data = str [_item,_amount,_displayNameCurrent];
				if _type then{_ctrlList lnbsetdata [[_l,0],_data]}else{_ctrlList lbsetdata [_l,_data]};
			};
		};


		if(_l_found == -1)then{
			["CreateItem",[_display,_ctrlList,_index,_item,_amount]] call SCRT_fnc_arsenal_loadoutArsenal;
			_l_found = _rowSize + 1;
		};
		["UpdateItemGui",[_display,_ctrlList,_index,_l_found]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////  GLOBAL
	case "UpdateItemRemove":{
		params ["_index","_item","_amount",["_updateDataList",false]];

		//update datalist
		if(_updateDataList)then{
			jna_dataList set [_index, [jna_dataList select _index, [_item, _amount]] call jn_fnc_arsenal_removeFromArray];
		};

		private _display =  uiNamespace getVariable ["arsenalDisplay","No display"];

		if (typeName _display == "STRING") exitWith {};
		if(str _display isEqualTo "No display")exitWith{};
		if(_item isEqualTo "")exitWith{};

		if(_index == IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL)then{
			switch true do {
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG))): { _index = IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG; };
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG))): { _index = IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG; };
				case (ctrlEnabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2))): { _index = IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2; };
			};
		};

		_indexList = _index;

		private _ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _indexList);
		private _type = ctrltype _ctrlList == 102;
		private _cursel = if _type then{-1}else{lbCurSel _ctrlList};

		if((_index in [IDCS_RIGHT]) && !(ctrlEnabled _ctrlList)) exitWith{};

		_l_found = -1;
		_rowSize = if _type then{((lnbSize _ctrlList select 0) - 1);}else{(lbsize _ctrlList - 1);};
		for "_l" from 0 to _rowSize do {
			_dataStr = if _type then{_ctrlList lnbdata [_l,0]}else{_ctrlList lbdata _l};
			_dataCurrent = call compile _dataStr;
			_itemCurrent = _dataCurrent select 0;
			_amountCurrent = _dataCurrent select 1;
			_displayNameCurrent = _dataCurrent select 2;
			if(_item isEqualTo _itemCurrent)exitWith{
				_l_found = _l;
				if(_amount == -1)then{
					_amount = 0;//unlimited remove
				}else{
					if(_amountCurrent == -1)then{
						_amount = -1;
					}else{
						_amount = _amountCurrent - _amount;
						if(_amount<0)then{_amount = 0};
					}
				};

				if(_amount == 0 && {
					if _type then{
						(parseNumber (_ctrlList lnbText [_l,2]) == 0);
					}else{
						(_l != _cursel);
					}
				})then{
					if(_type)then{_ctrlList lnbDeleteRow _l;}else{_ctrlList lbDelete _l;};
					if(_cursel > _l)then{
						//reselect item if a item above was removed
						_ctrlList lbSetCurSel (_cursel-1);
					};
				}else{
					_data = str [_item,_amount,_displayNameCurrent];
					if _type then{_ctrlList lnbsetdata [[_l,0],_data]}else{_ctrlList lbsetdata [_l,_data]};
					["UpdateItemGui",[_display,_ctrlList,_index,_l_found]] call SCRT_fnc_arsenal_loadoutArsenal;
				};
			};
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "CreateItem":{
		private _display = _this select 0;
		private _ctrlList = _this select 1;
		private _index = _this select 2;
		private _item = _this select 3;			if(_item isEqualTo "")exitWith{};
		private _amount = _this select 4;

		private _xCfg = switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:	{configfile >> "cfgvehicles" 	>> _item};
			case IDC_RSCDISPLAYARSENAL_TAB_GOGGLES:		{configfile >> "cfgglasses" 	>> _item};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT: 	{configfile >> "cfgmagazines" 	>> _item};
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC:	{configfile >> "cfgweapons" 	>> _item};
			default										{configfile >> "cfgweapons" 	>> _item};
		};
		private _displayName = gettext (_xCfg >> "displayName");
		private _dlcName = _xCfg call GETDLC;
		private _data = str [_item,_amount,_displayName,_dlcName];
		private _lbAdd = 0;

		if (ctrltype _ctrlList == 102) then {
			_lbAdd = _ctrlList lnbaddrow ["",_displayName,str 0];
			_ctrlList lnbsetdata [[_lbAdd,0],_data];
			_ctrlList lnbsetpicture [[_lbAdd,0],gettext (_xCfg >> "picture")];

			_mass = if(_index == IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC)then{
				getnumber (_xCfg >> "itemInfo" >> "mass");
			}else{
				getnumber (_xCfg >> "mass");
			};
			_ctrlList lnbsetvalue [[_lbAdd,0], _mass];

		}else{
			_lbAdd = _ctrlList lbadd _displayName;
			_ctrlList lbsetdata [_lbAdd,_data];
			_ctrlList lbsetpicture [_lbAdd,gettext (_xCfg >> "picture")];

			//add magazine icon to weapons
			if(_index in [
				IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_HANDGUN
			])then{
				_ammo_logo = getText(configfile >> "RscDisplayArsenal" >> "Controls" >> "TabCargoMag" >> "text");
				_ctrlList lbsetpictureright [_lbAdd,_ammo_logo];
				_xCfg call ADDMODICON;
			};

			if(_index in [
				IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,
				IDC_RSCDISPLAYARSENAL_TAB_VEST,
				IDC_RSCDISPLAYARSENAL_TAB_BACKPACK,
				IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR,
				IDC_RSCDISPLAYARSENAL_TAB_GOGGLES,
				IDC_RSCDISPLAYARSENAL_TAB_NVGS,
				IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS,
				IDC_RSCDISPLAYARSENAL_TAB_MAP,
				IDC_RSCDISPLAYARSENAL_TAB_GPS,
				IDC_RSCDISPLAYARSENAL_TAB_RADIO,
				IDC_RSCDISPLAYARSENAL_TAB_COMPASS,
				IDC_RSCDISPLAYARSENAL_TAB_WATCH
			])then{
				_xCfg call ADDMODICON;
			};

			//grayout attachments
			if(_index in [
				IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,
				IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,
				IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,
				IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD
			])then{
				_weapon = switch true do {
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON))): {primaryweapon player};
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON))): {secondaryweapon player};
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN))): {handgunweapon player};
					default {""};
				};
				_compatibleItems = compatibleItems _weapon;
				if not (({_x == _item} count _compatibleItems > 0) || _item isequalto "")exitwith{
					_ctrlList lbSetColor [_lbAdd, [1,1,1,0.25]];
				};
				_xCfg call ADDMODICON;
			};
		};
		//["UpdateItemGui",[_display,_index,_lbAdd]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "UpdateItemGui":{
		_display = _this select 0;
		_ctrlList = _this select 1;
		_index = _this select 2;
		_l = _this select 3;

		_type = (ctrltype _ctrlList == 102);
		_cursel = lbcursel _ctrlList;
		_dataStr = if _type then{_ctrlList lnbData [_l,0]}else{_ctrlList lbdata _l};
		_data = call compile _dataStr;
		_item = _data select 0;
		_amount = _data select 1;
		_displayName = _data select 2;



		//skip empty
		if(_item isEqualTo "")exitWith{};

		//update name with counters and ammocounters (need to be done after sorting)
		//TODO change to define
		_checkAmount = {
			private["_amount","_suffix","_prefix","_amountString"];
			_amount = _this;


			if(_amount == -1)exitWith{"[   ∞  ]  ";};

			_suffix = "";
			_prefix = "";
			if(_amount > 999)then{
				_amount = round(_amount/1000);_suffix="k";
				_prefix = switch true do{
					case(_amount>=100):{_amount = 99; "";};
					case(_amount>=10):{"";};
					case(_amount>=0):{"0";};
				};
			}else{
				_prefix = switch true do{
					case(_amount>=100):{"";};
					case(_amount>=10):{"0";};
					case(_amount>=0):{"00";};
				};
			};
			("[ " + _prefix + (str _amount) + _suffix + " ]  ");
		};

		//grayout items for non members, right items are done in selectRight
		// Except in the vehicle arsenal, where this function is used for the right items too
		_grayout = false;
		_min = [_index, _item] call _minItemsMember;
		_initialEquipment = FactionGet(reb,"initialRebelEquipment");
		if (_amount <= _min && {_amount != -1 && {!([player] call A3A_fnc_isMember)}}) then{_grayout = true};

		//grayout attachments
		private _isIncompatible = if (_index in [
			IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,
			IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD
		]) then {
			_weapon = switch true do {
				case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON))): {primaryweapon player};
				case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON))): {secondaryweapon player};
				case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN))): {handgunweapon player};
				default {""};
			};
			_compatibleItems = compatibleItems _weapon;

			!({_x == _item} count _compatibleItems > 0 || _item isEqualTo "")
		} else {
			false
		};

		private _color = switch (true) do {
			case (_isIncompatible): {
				INCOMPATIBLE_ITEM_COLOR;
			};
			case (_grayout): {
				FORBIDDEN_ITEM_COLOR;
			};
			case (605 in getArray (configfile >> "CfgWeapons" >> _item >>"ItemInfo" >> "allowedSlots") && {!(_item in allArmoredHeadgear)});
			case (_item in _initialEquipment): {
				INITIAL_EQUIPMENT_COLOR;
			};
			case (_amount <= _min && {_amount != -1}): {
				LIMITED_ITEM_COLOR;
			};
			default {
				DEFAULT_COLOR;
			};
		};

		if _type then {
			_ctrlList lnbSetColor [[_l,1], _color];
			_ctrlList lnbSetColor [[_l,2], _color];
		} else {
			_ctrlList lbSetColor [_l, _color];
		};


		//ammmo icon for weapons
		_ammo_logo = getText(configfile >> "RscDisplayArsenal" >> "Controls" >> "TabCargoMag" >> "text");
		if _type then{
			_text = ((_amount call _checkAmount) + _displayName);
			if(_index in [
				IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_HANDGUN
			])then{
				_text = "           " + _text;
			};
			_ctrlList lnbSetText [[_l,1],_text];

		}else{
			_ctrlList lbSetText [_l, ((_amount call _checkAmount) + _displayName)];

			//update ammo counter color on weapons
			if(_index in [
				IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,
				IDC_RSCDISPLAYARSENAL_TAB_HANDGUN
			])then{
				//check how many useable mags there are
				_ammoTotal = 0;
				//_compatableMagazines = server getVariable [format ["%1_mags", _item],[]];//TODO marker for changed entry
				scopeName "updateWeapon";//TODO marker for changed entry
				_compatableMagazines = compatibleMagazines _item;

				{
					private ["_amount"];
					_magName = _x select 0;
					_amount = _x select 1;
					//if(_amount == -1)exitWith{_ammoTotal = -1};//TODO marker for changed entry
					if ([_compatableMagazines, _magName] call _arrayContains) then {
						if (_amount == -1) then {_ammoTotal = -1; breakTo "updateWeapon"};//TODO marker for changed entry
						_ammoTotal = _ammoTotal + _amount;
					}
				} forEach (jna_dataList select IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL);

				//change color;
				_colorMult = switch (_item call BIS_fnc_itemType select 1) do{
					case "AssaultRifle": {1500};
					case "Handgun": {400};
					case "MachineGun": {4000};
					case "Shotgun": {300};
					case "Rifle": {1500};
					case "SubmachineGun": {800};
					case "SniperRifle": {200};
					Default {20};//launchers
				};
				_colorMult = _ammoTotal / _colorMult;
				if(_colorMult > 1 || _ammoTotal == -1)then{_colorMult = 1};
				_red = -0.6*_colorMult+0.8;
				_green = 0.6*_colorMult+0.2;
				_ctrlList lbSetPictureRightColorSelected [_l,[_red,_green,0.3,1]];
				_ctrlList lbSetPictureRightColor [_l,[_red,_green,0.3,1]];

				_strAmount = switch true do {
					case (_amount == 0): {
						localize "STR_A3AP_arsenal_scarcity_0"
					};
					case (_amount > 50): {
						localize "STR_A3AP_arsenal_scarcity_1"
					};
					case (_amount > 10): {
						localize "STR_A3AP_arsenal_scarcity_2"
					};
					case (_amount > 3): {
						localize "STR_A3AP_arsenal_scarcity_3"
					};
					case (_amount > 1): {
						localize "STR_A3AP_arsenal_scarcity_4"
					};
					case (_amount == 1): {
						localize "STR_A3AP_arsenal_scarcity_5"
					};
					case (_amount == -1): {//TODO marker for changed entry
						localize "STR_A3AP_arsenal_scarcity_1"
					};
					default{""};
				};

				_strAmmo = switch true do {
					case (_colorMult == 0): {
						localize "STR_A3AP_arsenal_scarcity_ammo_0"
					};
					case (_colorMult > 0.9): {
						localize "STR_A3AP_arsenal_scarcity_ammo_1"
					};
					case (_colorMult > 0.2): {
						localize "STR_A3AP_arsenal_scarcity_ammo_2"
					};
					case (_colorMult > 0): {
						localize "STR_A3AP_arsenal_scarcity_ammo_3"
					};
					default{""};
				};

				_ctrlList lbsettooltip [_l, (_strAmount + _strAmmo)];
			};
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "updateItemInfo": {
		_display = _this select 0;
		_ctrlList = _this select 1;
		_index = _this select 2;


		_cursel = lbcursel _ctrlList;
		_type = (ctrltype _ctrlList == 102);
		_dataStr = if _type then{_ctrlList lnbData [_cursel,0]}else{_ctrlList lbdata _cursel};
		_data = call compile _dataStr;
		_item = _data select 0;


		//--- Calculate load
		_ctrlLoad = _display displayctrl IDC_RSCDISPLAYARSENAL_LOAD;
		_ctrlLoad progresssetposition load player;

		//update weight
		_load = switch true do {
			case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_UNIFORM))): {loaduniform player};
			case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_VEST))): {loadvest player};
			case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_BACKPACK))): {loadbackpack player};
			default {0};
		};

		_ctrlLoadCargo = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;
		_ctrlLoadCargo progresssetposition _load;

		_itemCfg = switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:	{configfile >> "cfgvehicles" >> _item};
			case IDC_RSCDISPLAYARSENAL_TAB_GOGGLES:		{configfile >> "cfgglasses" >> _item};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC:	{configfile >> "cfgmagazines" >> _item};
			default										{configfile >> "cfgweapons" >> _item};
		};

		["ShowItemInfo",[_itemCfg]] call SCRT_fnc_arsenal_loadoutArsenal;
		["ShowItemStats",[_itemCfg]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "SelectItem": {
		params ["_display","_ctrlList","_index"];

		private _cursel = lbcursel _ctrlList;
		private _type = (ctrltype _ctrlList == 102);
		private _dataStr = if _type then{_ctrlList lnbData [_cursel,0]}else{_ctrlList lbdata _cursel};
		private _data = call compile _dataStr;
		private _item = _data select 0;
		private _amount = _data select 1;
		private _displayName = _data select 2;

		private _oldItem = "";

		private _ctrlListPrimaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON);
		private _ctrlListSecondaryWeapon = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON);
		private _ctrlListHandgun = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN);

		// Prevent equipping item when there aren't any left
		if (_amount == 0 and _item != "") exitWith{
			if(missionnamespace getvariable ["jna_reselect_item",true])then{//prefent loop when unavalable item was worn and a other unavalable item was selected
				missionnamespace setvariable ["jna_reselect_item",false];
				["ListSelectCurrent",[_display,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
				missionnamespace setvariable ["jna_reselect_item",true];
			};
		};

		//check if weapon is unlocked
		private _min = [_index, _item] call _minItemsMember;
		if ((_amount <= _min) && {_amount != -1 AND {_item !="" && {!_type}}}) exitWith {
			['showMessage',[_display, (localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_unlocked_items")]] call SCRT_fnc_arsenal_loadoutArsenal;

			//reset _cursel
			if(missionnamespace getvariable ["jna_reselect_item",true])then{//prefent loop when unavalable item was worn and a other unavalable item was selected
				missionnamespace setvariable ["jna_reselect_item",false];
				["ListSelectCurrent",[_display,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
				missionnamespace setvariable ["jna_reselect_item",true];
			};
		};

		switch _index do {
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM;
			case IDC_RSCDISPLAYARSENAL_TAB_VEST;
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {
				_oldItem = switch _index do{
					case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{ uniform player;};
					case IDC_RSCDISPLAYARSENAL_TAB_VEST:{ vest player;};
					case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{ backpack player;};
				};

				if (_oldItem != _item) then {

					_container = switch _index do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{uniformContainer player;};
						case IDC_RSCDISPLAYARSENAL_TAB_VEST:{vestContainer player;};
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{ backpackContainer player;};
					};

					_magazines = magazinesAmmoCargo _container;

					_items = [""] + (itemCargo _container);
					{
						_items = _items + [
							(_x select 0), //weapon
							(_x select 1), //attachments
							(_x select 2),
							(_x select 3),
							(_x select 5)  //bipod
						];
					} forEach (weaponsItemsCargo _container);
					_items = _items - [""];


					//remove container
					switch _index do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{removeUniform player;};
						case IDC_RSCDISPLAYARSENAL_TAB_VEST:{removeVest player;};
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{removebackpack player;};
					};

					[_index, _oldItem] call jn_fnc_arsenal_addItem;

					if (_item != "") then{
						switch _index do{
							case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{
								player forceaddUniform _item;
							};
							case IDC_RSCDISPLAYARSENAL_TAB_VEST:{
								player addVest _item;
							};
							case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {
								player addbackpack _item;
								//Some glitchy backpacks aren't empty. Make sure they are. NO FREE ITEMS.
								clearAllItemsFromBackpack player;
							};
						};



						//container changed
						_container = switch _index do{
							case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{ uniformContainer player;};
							case IDC_RSCDISPLAYARSENAL_TAB_VEST:{vestContainer player;};
							case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{backpackContainer player;};
						};

						[_index, _item] call jn_fnc_arsenal_removeItem;
					};
					{
						_canAdd = switch _index do{
							case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{player canAddItemToUniform _x;};
							case IDC_RSCDISPLAYARSENAL_TAB_VEST:{player canAddItemToVest _x;};
							case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{player canAddItemToBackpack _x;};
						};
						if(_canAdd)then{
							switch _index do{
								case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{player addItemToUniform _x;};
								case IDC_RSCDISPLAYARSENAL_TAB_VEST:{player addItemToVest _x;};
								case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{player additemtobackpack _x;};
							};

						}else{
							_indexItem = _x call jn_fnc_arsenal_itemType;
							if!(_indexItem in [
							   IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,
							   IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,
							   IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,
							   IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT
							])then{
								[_indexItem, _x] call jn_fnc_arsenal_addItem;
							};
						};
					} foreach _items;

					//add back ammo, if possible
					{
						_magazine = _x select 0;
						_count = _x select 1;

						_canAdd = switch _index do{
							case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM:{player canAddItemToUniform _magazine;};
							case IDC_RSCDISPLAYARSENAL_TAB_VEST:{player canAddItemToVest _magazine;};
							case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK:{player canAddItemToBackpack _magazine;};
						};
						if(_canAdd)then{
							_container addMagazineAmmoCargo [_magazine,1,_count];
						}else{
							_indexItem = _magazine call jn_fnc_arsenal_itemType;
							[_indexItem, _magazine, _count] call jn_fnc_arsenal_addItem;
						};
					}forEach _magazines;

				};
				_lastCargoListSelected = uiNamespace getVariable ["jna_lastCargoListSelected", IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG];
				['TabSelectRight',[_display,IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG]] call SCRT_fnc_arsenal_loadoutArsenal;
			};
			case IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR: {
				_oldItem = headgear player;
				if (_oldItem != _item) then {
					removeheadgear player;
					[_index, _oldItem] call jn_fnc_arsenal_addItem;
					if (_item != "") then{
						player addheadgear _item;
						[_index, _item]call jn_fnc_arsenal_removeItem;
					};
				};
				diag_log ["_oldItem",_oldItem,_item];

			};
			case IDC_RSCDISPLAYARSENAL_TAB_GOGGLES: {
				_oldItem = goggles player;
				if (_oldItem != _item) then {
					removeGoggles player;
					[_index, _oldItem] call jn_fnc_arsenal_addItem;
					if (_item != "") then{
						player addGoggles _item;
						[_index, _item]call jn_fnc_arsenal_removeItem;
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_NVGS:{
				_oldItem = hmd player;
				if (_oldItem != _item) then {
					player removeWeaponGlobal _oldItem;
					[_index, _oldItem] call jn_fnc_arsenal_addItem;
					if (_item != "") then{
						player addweapon _item;
						[_index, _item]call jn_fnc_arsenal_removeItem;
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS: {
				_oldItem = binocular player;
				if (_oldItem != _item) then {
					player removeWeaponGlobal _oldItem;
					[_index,_oldItem] call jn_fnc_arsenal_addItem;
					if (_item != "") then{
						player addweapon _item;
						_magazines = getarray (configfile >> "cfgweapons" >> _item >> "magazines");
						if (count _magazines > 0) then {
							_mag = (_magazines select 0);
							if([jna_dataList select IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL, _mag] call jn_fnc_arsenal_itemCount > 0)then{
								if((player canAddItemToUniform _mag)||(player canAddItemToVest _mag)||(player canAddItemToBackpack _mag))then{
									player addmagazine _mag;
									[IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL, _mag]call jn_fnc_arsenal_removeItem;
								}else{
									titleText["I can't take batteries, I have no space for it", "PLAIN"];
								};
							}else{
								titleText["Shit there are no more batteries", "PLAIN"];
							};
						};
						[_index, _item]call jn_fnc_arsenal_removeItem;
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON;
			case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON;
			case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {
				_oldItem = switch _index do {
					case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {primaryweapon player};
					case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON: {secondaryweapon player};
					case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {handgunweapon player};
					default {""};
				};

				if (_oldItem != _item) then {
					_oldAttachments = switch _index do {
						case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {primaryweaponitems player};
						case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON: {secondaryweaponitems player};
						case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {handgunitems player};
						default {""};
					};
					_oldAttachments = _oldAttachments - [""];

					//remove magazines
					_oldMagazines = magazinesAmmoFull player;//["30Rnd_65x39_caseless_mag",30,false,-1,"Uniform"]
					_loadout = getUnitLoadout player;
					{player removeMagazineGlobal _x} forEach magazines player;


					//remove weapon
					player removeWeaponGlobal _oldItem;
					[_index, _oldItem] call jn_fnc_arsenal_addItem;

					//add new weapon
					if (_item != "") then {
						//give player new weapon
						[player,_item,0] call bis_fnc_addweapon;
						[_index, _item]call jn_fnc_arsenal_removeItem;

						//Remove any attachments that spawn *with* the weapon.
						switch _index do {
							case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {removeAllPrimaryWeaponItems player};
							case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {removeAllHandgunItems player};
						};

						//try adding back attachments
						{
							switch _index do {
								case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {player addPrimaryWeaponItem _x};
								case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON: {player addSecondaryWeaponItem _x};
								case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {player addhandgunitem _x};
								default {""};
							};
						}foreach _oldAttachments;

					};

					//re-add magazines
					_loadoutNew = getUnitLoadout player;
					_loadout set[_index, _loadoutNew select _index];
					player setUnitLoadout _loadout;
					_oldCompatableMagazines = compatibleMagazines _oldItem;
					_newCompatableMagazines = compatibleMagazines _item;
					{
						_magazine = _x select 0;
						_amount = _x select 1;
						_loaded = _x select 2;
						_location = _x select 3;
						if _loaded then{
							if	((_location == 1 && _index == IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON) ||
								(_location == 4 && _index == IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON) ||
								(_location == 2 && _index == IDC_RSCDISPLAYARSENAL_TAB_HANDGUN))
							then{
								player addweaponitem [_item,[_magazine,_amount]];
							};
						}else{
							if([_oldCompatableMagazines, _magazine] call _arrayContains)then{
								if!([_newCompatableMagazines, _magazine] call _arrayContains)then{
									player removeMagazineGlobal _magazine;
								};
							};
						};
					}forEach _oldMagazines;

					{ _x resize 2 } forEach _oldMagazines;
					_newMagazines = magazinesAmmoFull player;
					{ _x resize 2 } forEach _newMagazines;
					_updateMagazineList = [];
					{
						_magazine = _x select 0;
						_amount = _x select 1;
						_indexItem = _magazine call jn_fnc_arsenal_itemType;

						[_indexItem, _magazine, _amount] call jn_fnc_arsenal_addItem;
					}forEach(_oldMagazines - _newMagazines);

					_newAttachments = switch _index do {
						case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON: {primaryweaponitems player};
						case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON: {secondaryweaponitems player};
						case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {handgunitems player};
						default {""};
					};
					_newAttachments = _newAttachments - [""];

					//save and load attachments
					{
						private["_idcList","_type"];
						_type = _x call bis_fnc_itemType;
						_idcList = switch (_type select 1) do {
							case "AccessoryMuzzle": {IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE};
							case "AccessoryPointer": {IDC_RSCDISPLAYARSENAL_TAB_ITEMACC};
							case "AccessorySights": {IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC};
							case "AccessoryBipod": {IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD};
							default {-1};
						};
						if(_idcList != -1)then{[_idcList, _x] call jn_fnc_arsenal_addItem};
					}foreach _oldAttachments - _newAttachments;
					{
						private["_idcList","_type"];
						_type = _x call bis_fnc_itemType;
						_idcList = switch (_type select 1) do {
							case "AccessoryMuzzle": {IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE};
							case "AccessoryPointer": {IDC_RSCDISPLAYARSENAL_TAB_ITEMACC};
							case "AccessorySights": {IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC};
							case "AccessoryBipod": {IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD};
							default {-1};
						};
						if(_idcList != -1)then{[_idcList, _x] call jn_fnc_arsenal_removeItem};
					}foreach _newAttachments - _oldAttachments;

					['TabSelectRight',[_display,IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG]] call SCRT_fnc_arsenal_loadoutArsenal;
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_MAP;
			case IDC_RSCDISPLAYARSENAL_TAB_GPS;
			case IDC_RSCDISPLAYARSENAL_TAB_RADIO;
			case IDC_RSCDISPLAYARSENAL_TAB_COMPASS;
			case IDC_RSCDISPLAYARSENAL_TAB_WATCH: {
				_oldItem = "";
				{
					if(_index == (_x call jn_fnc_arsenal_itemType))exitwith{
						_oldItem = _x;
					};
				}foreach assignedItems player;

				//TFAR FIX
				_OldItemUnequal = _oldItem;
				if(_index == IDC_RSCDISPLAYARSENAL_TAB_COMPASS)then{
					_radioName = getText(configfile >> "CfgWeapons" >> _oldItem >> "tf_parent");
					if!(_radioName isEqualTo "")exitWith{
						_OldItemUnequal = _radioName;
					};
				};

				//ACRE FIX
				_OldItemUnequal = _oldItem;
				if(_index == IDC_RSCDISPLAYARSENAL_TAB_COMPASS)then{
					_radioName = getText(configfile >> "CfgVehicles" >> _oldItem >> "acre_baseClass");
					if!(_radioName isEqualTo "")exitWith{
						_OldItemUnequal = _radioName;
					};
				};

				if (_oldItem != _item) then {
					player unassignitem _OldItemUnequal;
					player removeitem _OldItemUnequal;
					[_index, _oldItem] call jn_fnc_arsenal_addItem;
					if (_item != "") then {
						player linkitem _item;
						[_index, _item]call jn_fnc_arsenal_removeItem;
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMACC;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE;
			case IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD: {

				_weapon = switch true do {
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON))): {primaryweapon player};
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON))): {secondaryweapon player};
					case (ctrlenabled (_display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + IDC_RSCDISPLAYARSENAL_TAB_HANDGUN))): {handgunweapon player};
					default {""};
				};

				//prevent selecting grey items, needs to be this complicated because bis_fnc_compatibleItems returns some crap resolts like optic_aco instead of Optic_Aco
				_compatibleItems = compatibleItems _weapon;
				if not (({_x == _item} count _compatibleItems > 0) || _item isequalto "")exitwith{
					['TabSelectRight',[_display,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
				};

				_accIndex = [
					IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,
					IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD
				] find _index;

				switch true do {
				case (ctrlenabled _ctrlListPrimaryWeapon): {

						_oldItem = (primaryWeaponItems player select _accIndex);
						if (_oldItem != _item) then {
							player removeprimaryweaponitem _oldItem;
							[_index, _oldItem] call jn_fnc_arsenal_addItem;
							if (_item != "") then {
								player addprimaryweaponitem _item;
								[_index, _item]call jn_fnc_arsenal_removeItem;
							};
						};
					};
					case (ctrlenabled _ctrlListSecondaryWeapon): {
						_oldItem = (secondaryWeaponItems player select _accIndex);
						if (_oldItem != _item) then {
							player removesecondaryweaponitem _oldItem;
							[_index, _oldItem] call jn_fnc_arsenal_addItem;
							if (_item != "") then {
								player addsecondaryweaponitem _item;
								[_index, _item]call jn_fnc_arsenal_removeItem;
							};
						};
					};
					case (ctrlenabled _ctrlListHandgun): {
						_oldItem = (handgunitems player select _accIndex);
						if (_oldItem != _item) then {
							player removehandgunitem _oldItem;
							[_index, _oldItem] call jn_fnc_arsenal_addItem;
							if (_item != "") then {
								player addhandgunitem _item;
								[_index, _item]call jn_fnc_arsenal_removeItem;
							};
						};
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG: {
				private ["_weapon", "_weaponMagazines"];
				_index = IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
				switch true do {
					case (ctrlenabled _ctrlListPrimaryWeapon): { _weapon = primaryWeapon player; _weaponMagazines = primaryWeaponMagazine player };
					case (ctrlEnabled _ctrlListSecondaryWeapon): { _weapon = secondaryWeapon player; _weaponMagazines = secondaryWeaponMagazine player };
					case (ctrlEnabled _ctrlListHandgun): { _weapon = handgunWeapon player; _weaponMagazines = handgunMagazine player };
				};
				_oldMag = "";
				{
					if (_x in compatibleMagazines [_weapon, "this"]) exitWith { _oldMag = _x};
				} forEach _weaponMagazines;
				_oldAmmoCount = 0;
				{ if ((_x#0 == _oldMag) && (_x#2)) exitWith { _oldAmmoCount = _x#1 }; } forEach (magazinesAmmoFull player);
				_newMag = _item;
				_cfgAmmoCount = getNumber (configFile >> "CfgMagazines" >> _newMag >> "count");
				_newAmmoCount = [_amount, _cfgAmmoCount] select ((_amount == -1) || (_amount > _cfgAmmoCount));

				switch true do {
					case (ctrlenabled _ctrlListPrimaryWeapon): {
						if (_oldMag != _newMag) then {
							player removePrimaryWeaponItem _oldMag;
							[_index, _oldMag, _oldAmmoCount] call jn_fnc_arsenal_addItem;
							if (_newMag != "") then {
								player addPrimaryWeaponItem _newMag;
								[_index, _newMag, _newAmmoCount] call jn_fnc_arsenal_removeItem;
							};
						};
					};
					case (ctrlEnabled _ctrlListSecondaryWeapon): {
						if (_oldMag != _newMag) then {
							player removeSecondaryWeaponItem _oldMag;
							[_index, _oldMag, _oldAmmoCount] call jn_fnc_arsenal_addItem;
							if (_newMag != "") then {
								player addSecondaryWeaponItem _newMag;
								[_index, _newMag, _newAmmoCount] call jn_fnc_arsenal_removeItem;
							};
						};
					};
					case (ctrlEnabled _ctrlListHandgun): {
						if (_oldMag != _newMag) then {
							player removeHandgunItem _oldMag;
							[_index, _oldMag, _oldAmmoCount] call jn_fnc_arsenal_addItem;
							if (_newMag != "") then {
								player addHandgunItem _newMag;
								[_index, _newMag, _newAmmoCount] call jn_fnc_arsenal_removeItem;
							};
						};
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_LOADEDMAG2: {
				// this all assumes a "standard" weapon with one primary muzzle, one and only one alternate muzzle (GL), and that the alternate muzzle only has one round (i.e. a normal rifle with single shot underbarrel grenade launcher)
				// will probably break with anything weird like a masterkey / underbarrel shotgun or something else I can't think of rn
				_index = IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
				_weapon = primaryWeapon player;
				_weaponCfg = configFile >> "CfgWeapons" >> _weapon;
				_muzzle = configName (_weaponCfg >> (getArray (_weaponCfg >> "muzzles") select 1));
				_oldMag = "";
				{
					if (_x in compatibleMagazines [_weapon, _muzzle]) exitWith { _oldMag = _x};
				} forEach (primaryWeaponMagazine player);
				_newMag = _item;

				if (_oldMag != _newMag) then {
					player removePrimaryWeaponItem _oldMag;
					[_index, _oldMag] call jn_fnc_arsenal_addItem;
					if (_newMag != "") then {
						player addPrimaryWeaponItem _newMag;
						[_index, _newMag] call jn_fnc_arsenal_removeItem;
					};
				};
			};
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT;
			case IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC:{
				//handled in "buttonCargo"
			};
		};



		["updateItemInfo",[ _display,_ctrlList,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
		["HighlightMissingIcons",[_display]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "SelectItemRight": {
		private ["_ctrlList","_index","_cursel"];
		_display = _this select 0;
		_ctrlList = _this select 1;
		_index = _this select 2;
		_center = (missionnamespace getvariable ["BIS_fnc_arsenal_center",player]);
		_type = (ctrltype _ctrlList == 102);


		//--- Get container
		_indexLeft = -1;
		{
			_ctrlListLeft = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _x);
			if (ctrlenabled _ctrlListLeft) exitwith {_indexLeft = _x;};
		} foreach [IDCS_LEFT];

		_supply = switch _indexLeft do {
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {
				gettext (configfile >> "CfgWeapons" >> uniform _center >> "ItemInfo" >> "containerClass")
			};
			case IDC_RSCDISPLAYARSENAL_TAB_VEST: {
				gettext (configfile >> "CfgWeapons" >> vest _center >> "ItemInfo" >> "containerClass")
			};
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {
				backpack _center
			};
			default {""};
		};

		_maximumLoad = 1 max getNumber (configFile >> "CfgVehicles" >> _supply >> "maximumLoad");

		_ctrlLoadCargo = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;
		_load = _maximumLoad * (1 - progressposition _ctrlLoadCargo);



		//-- Disable too heavy items
		_rows = lnbsize _ctrlList select 0;
		_columns = lnbsize _ctrlList select 1;
		_colorWarning = ["IGUI","WARNING_RGB"] call bis_fnc_displayColorGet;
		_columns = count lnbGetColumnsPosition _ctrlList;
		for "_r" from 0 to (_rows - 1) do {
			_dataStr = _ctrlList lnbData [_r,0];
			_data = call compile _dataStr;
			_item = _data select 0;
			_amount = _data select 1;
			_grayout = false;

			_min = [_index, _item] call _minItemsMember;
			if (_amount <= _min && {_amount != -1 && {_amount !=0}}) then{_grayout = true};

			_isIncompatible = _ctrlList lnbvalue [_r,1];
			_mass = _ctrlList lbvalue (_r * _columns);
			_alpha = [1.0,0.25] select (_mass > parseNumber (str _load));
			_color = [[1,1,1,_alpha],[1,0.5,0,_alpha]] select _isIncompatible;
			if(_grayout)then{_color = [1,1,0,0.60];};
			_ctrlList lnbsetcolor [[_r,1],_color];
			_ctrlList lnbsetcolor [[_r,2],_color];
			_text = _ctrlList lnbtext [_r,1];
			_ctrlList lbsettooltip [_r * _columns,[_text,_text + "\n(Not compatible with currently equipped weapons)"] select _isIncompatible];
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////  event
	case "buttonCargo": {
		_display = _this select 0;
		_add = _this select 1;
		_selected = -1;
		{
			_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _x);
			if (ctrlenabled _ctrlList) exitwith {_selected = _x;};
		} foreach [IDCS_LEFT];

		_ctrlList = ctrlnull;
		_index = -1;
		_lbcursel = -1;
		{
			_ctrlList = _display displayctrl (IDC_RSCDISPLAYARSENAL_LIST + _x);
			if (ctrlenabled _ctrlList) exitwith {_lbcursel = lbcursel _ctrlList;_index = _x};
		} foreach [IDCS_RIGHT];

		_dataStr = _ctrlList lnbData [_lbcursel,0];
		_data = call compile _dataStr;
		_item = _data select 0;
		_amount = _data select 1;

		_load = 0;
		_items = [];
		_itemChanged = false;

		_ctrlLoadCargo = _display displayctrl IDC_RSCDISPLAYARSENAL_LOADCARGO;

		//save old weight
		_loadOld = switch _selected do{
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {loaduniform player};
			case IDC_RSCDISPLAYARSENAL_TAB_VEST: {loadvest player};
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {loadbackpack player};
		};


		//remove or add
		_count = 1;
		if(((_amount > 0 || _amount == -1) || _add < 0) && (_add != 0))then{

			if (_add > 0) then {//add
				_min = [_index, _item] call _minItemsMember;
				if(_amount <= _min && {_amount != -1}) exitWith{
					['showMessage',[_display, (localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_unlocked_items")]] call SCRT_fnc_arsenal_loadoutArsenal;
				};
				if(_index in [IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL])then{//magazines are handeld by bullet count
					//check if full mag can be optaind
					_count = getNumber (configfile >> "CfgMagazines" >> _item >> "count");
					if(_amount != -1)then{
						if(_amount<_count)then{_count = _amount};
					};

					_container = switch _selected do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: { uniformContainer player };
						case IDC_RSCDISPLAYARSENAL_TAB_VEST: { vestContainer player };
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: { backpackContainer player };
						default { objNull };
					};

					if ([_container, _item] call SCRT_fnc_misc_canAddItemToContainer) then{
						_container addMagazineAmmoCargo [_item,1,_count];
					};
				}else{
					switch _selected do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {player additemtouniform _item;};
						case IDC_RSCDISPLAYARSENAL_TAB_VEST: {player additemtovest _item;};
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {player additemtobackpack _item;};
					};
				};
			} else {//remove
				if(_index in [IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL])then{

					_container = switch _selected do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {uniformContainer player};
						case IDC_RSCDISPLAYARSENAL_TAB_VEST: {vestContainer player;};
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {backpackContainer player;};
					};

					//save mags in list and remove them
					_mags = magazinesAmmoCargo _container;
					if (_mags findIf {(_x select 0) isEqualTo _item} == -1) exitWith {};
					clearMagazineCargoGlobal _container;

					//add back magazines exept the one that needs to be removed
					_removed = false;
					{
						if((_x select 0) isEqualTo _item && !_removed)then{
							_count = _x select 1;//this mag is removed
							_removed = true;
						}else{
							_container addMagazineAmmoCargo [(_x select 0),1,(_x select 1)];
						};
					} forEach _mags;

				}else{
					switch _selected do{
						case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {player removeitemfromuniform _item;};
						case IDC_RSCDISPLAYARSENAL_TAB_VEST: {player removeitemfromvest _item;};
						case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {player removeitemfrombackpack _item;};
					};
				};
			};
		};

		//check if item was added
		_load = switch _selected do{
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {loaduniform player};
			case IDC_RSCDISPLAYARSENAL_TAB_VEST: {loadvest player};
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {loadbackpack player};
		};

		if!(_loadOld isEqualTo _load)then{
			_amountOld = parseNumber (_ctrlList lnbtext [_lbcursel,2]);
			if(_add > 0)then{
				_ctrlList lnbsettext [[_lbcursel,2],str (_amountOld + _count)];
				[_index, _item, _count]call jn_fnc_arsenal_removeItem;
			}else{
				_ctrlList lnbsettext [[_lbcursel,2],str (_amountOld - _count)];
				[_index, _item, _count] call jn_fnc_arsenal_addItem;
			};
		};

		_load = switch _selected do{
			case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM: {loaduniform player};
			case IDC_RSCDISPLAYARSENAL_TAB_VEST: {loadvest player};
			case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK: {loadbackpack player};
		};

		_ctrlLoadCargo progresssetposition _load;

		["SelectItemRight",[_display,_ctrlList,_index]] call SCRT_fnc_arsenal_loadoutArsenal;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "showMessage": {
		if !(isnil {missionnamespace getvariable "BIS_fnc_arsenal_message"}) then {terminate (missionnamespace getvariable "BIS_fnc_arsenal_message")};

		_spawn = _this spawn {
			disableserialization;
			_display = _this select 0;
			_message = _this select 1;

			_ctrlMessage = _display displayctrl IDC_RSCDISPLAYARSENAL_MESSAGE;
			_ctrlMessage ctrlsettext _message;
			_ctrlMessage ctrlsetfade 1;
			_ctrlMessage ctrlcommit 0;
			_ctrlMessage ctrlsetfade 0;
			_ctrlMessage ctrlcommit FADE_DELAY;
			uisleep 5;
			_ctrlMessage ctrlsetfade 1;
			_ctrlMessage ctrlcommit FADE_DELAY;
		};
		missionnamespace setvariable ["BIS_fnc_arsenal_message",_spawn];
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "hideMessage":{
		_display = _this select 0;
		if !(isnil {missionnamespace getvariable "BIS_fnc_arsenal_message"}) then {terminate (missionnamespace getvariable "BIS_fnc_arsenal_message")};
		_ctrlMessage = _display displayctrl IDC_RSCDISPLAYARSENAL_MESSAGE;
		_ctrlMessage ctrlsetfade 1;
		_ctrlMessage ctrlcommit FADE_DELAY;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "showMessageEndless": {
		if !(isnil {missionnamespace getvariable "BIS_fnc_arsenal_message"}) then {terminate (missionnamespace getvariable "BIS_fnc_arsenal_message")};

		_spawn = _this spawn {
			disableserialization;
			_display = _this select 0;
			_message = _this select 1;

			_ctrlMessage = _display displayctrl IDC_RSCDISPLAYARSENAL_MESSAGE;
			_ctrlMessage ctrlsettext _message;
			_ctrlMessage ctrlsetfade 1;
			_ctrlMessage ctrlcommit 0;
			_ctrlMessage ctrlsetfade 0;
			_ctrlMessage ctrlcommit FADE_DELAY;
		};
		missionnamespace setvariable ["BIS_fnc_arsenal_message",_spawn];
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ShowItemInfo": {
		_itemCfg = _this select 0;

		if (isclass _itemCfg) then {
			_dataStr = param [1,if (ctrltype _ctrlList == 102) then {_ctrlList lnbdata [_cursel,0]} else {_ctrlList lbdata _cursel}];
			_data = call compile _dataStr;
			_item = _data select 0;

			_ctrlInfo = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_INFO;
			_ctrlInfo ctrlsetfade 0;
			_ctrlInfo ctrlcommit FADE_DELAY;

			_ctrlInfoName = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_INFONAME;
			_ctrlInfoName ctrlsettext ((_item call bis_fnc_itemType) select 1);

			_ctrlInfoAuthor = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_INFOAUTHOR;
			_ctrlInfoAuthor ctrlsettext "";
			[_itemCfg,_ctrlInfoAuthor] call bis_fnc_overviewauthor;

			//--- DLC / mod icon
			_ctrlDLC = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_DLCICON;
			_ctrlDLCBackground = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_DLCBACKGROUND;
			_dlc = _itemCfg call GETDLC;
			if (_dlc != "" /*  && _fullVersion */) then {

				_dlcParams = modParams [_dlc,["name","logo","logoOver"]];
				_name = _dlcParams param [0,""];
				_logo = _dlcParams param [1,""];
				_logoOver = _dlcParams param [2,""];
				_fieldManualTopicAndHint = getarray (configfile >> "cfgMods" >> _dlc >> "fieldManualTopicAndHint");

				_ctrlDLC ctrlsettooltip _name;
				_ctrlDLC ctrlsettext _logo;
				_ctrlDLC ctrlsetfade 0;
				_ctrlDLC ctrlseteventhandler ["mouseexit",format ["(_this select 0) ctrlsettext '%1';",_logo]];
				_ctrlDLC ctrlseteventhandler ["mouseenter",format ["(_this select 0) ctrlsettext '%1';",_logoOver]];
				_ctrlDLC ctrlseteventhandler ["buttonclick",format ["if (count %1 > 0) then {(%1 + [ctrlparent (_this select 0)]) call bis_fnc_openFieldManual;};",_fieldManualTopicAndHint]];
				_ctrlDLCBackground ctrlsetfade 0;
			} else {
				_ctrlDLC ctrlsetfade 1;
				_ctrlDLCBackground ctrlsetfade 1;
			};
			_ctrlDLC ctrlcommit FADE_DELAY;
			_ctrlDLCBackground ctrlcommit FADE_DELAY;

		} else {
			_ctrlInfo = _display displayctrl IDC_RSCDISPLAYARSENAL_INFO_INFO;
			_ctrlInfo ctrlsetfade 1;
			_ctrlInfo ctrlcommit FADE_DELAY;

			_ctrlStats = _display displayctrl IDC_RSCDISPLAYARSENAL_STATS_STATS;
			_ctrlStats ctrlsetfade 1;
			_ctrlStats ctrlcommit FADE_DELAY;
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "ShowItemStats": {
		_itemCfg = _this select 0;
		if (isclass _itemCfg) then {
			_ctrlStats = _display displayctrl IDC_RSCDISPLAYARSENAL_STATS_STATS;

			_ctrlStatsPos = ctrlposition _ctrlStats;
			_ctrlStatsPos set [0,0];
			_ctrlStatsPos set [1,0];
			_ctrlBackground = _display displayctrl IDC_RSCDISPLAYARSENAL_STATS_STATSBACKGROUND;
			_barMin = 0.01;
			_barMax = 1;

			_statControls = [
				[IDC_RSCDISPLAYARSENAL_STATS_STAT1,IDC_RSCDISPLAYARSENAL_STATS_STATTEXT1],
				[IDC_RSCDISPLAYARSENAL_STATS_STAT2,IDC_RSCDISPLAYARSENAL_STATS_STATTEXT2],
				[IDC_RSCDISPLAYARSENAL_STATS_STAT3,IDC_RSCDISPLAYARSENAL_STATS_STATTEXT3],
				[IDC_RSCDISPLAYARSENAL_STATS_STAT4,IDC_RSCDISPLAYARSENAL_STATS_STATTEXT4],
				[IDC_RSCDISPLAYARSENAL_STATS_STAT5,IDC_RSCDISPLAYARSENAL_STATS_STATTEXT5]
			];
			_rowH = 1 / (count _statControls + 1);
			_fnc_showStats = {
				_h = _rowH;
				{
					_ctrlStat = _display displayctrl ((_statControls select _foreachindex) select 0);
					_ctrlText = _display displayctrl ((_statControls select _foreachindex) select 1);
					if (count _x > 0) then {
						_ctrlStat progresssetposition (_x select 0);
						_ctrlText ctrlsettext toupper (_x select 1);
						_ctrlText ctrlsetfade 0;
						_ctrlText ctrlcommit 0;
						//_ctrlText ctrlshow true;
						_h = _h + _rowH;
					} else {
						_ctrlStat progresssetposition 0;
						_ctrlText ctrlsetfade 1;
						_ctrlText ctrlcommit 0;
						//_ctrlText ctrlshow false;
					};
				} foreach _this;
				_ctrlStatsPos set [1,(_ctrlStatsPos select 3) * (1 - _h)];
				_ctrlStatsPos set [3,(_ctrlStatsPos select 3) * _h];
				_ctrlBackground ctrlsetposition _ctrlStatsPos;
				_ctrlBackground ctrlcommit 0;
			};

			switch _index do {
				case IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON;
				case IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON;
				case IDC_RSCDISPLAYARSENAL_TAB_HANDGUN: {
					_ctrlStats ctrlsetfade 0;
					_statsExtremes = uinamespace getvariable "bis_fnc_arsenal_weaponStats";
					if !(isnil "_statsExtremes") then {
						_statsMin = _statsExtremes select 0;
						_statsMax = _statsExtremes select 1;

						_stats = [
							[_itemCfg],
							STATS_WEAPONS,
							_statsMin
						] call bis_fnc_configExtremes;
						_stats = _stats select 1;

						_statReloadSpeed = linearConversion [_statsMin select 0,_statsMax select 0,_stats select 0,_barMax,_barMin];
						_statDispersion = linearConversion [_statsMin select 1,_statsMax select 1,_stats select 1,_barMax,_barMin];
						_statMaxRange = linearConversion [_statsMin select 2,_statsMax select 2,_stats select 2,_barMin,_barMax];
						_statHit = linearConversion [_statsMin select 3,_statsMax select 3,_stats select 3,_barMin,_barMax];
						_statMass = linearConversion [_statsMin select 4,_statsMax select 4,_stats select 4,_barMin,_barMax];
						_statInitSpeed = linearConversion [_statsMin select 5,_statsMax select 5,_stats select 5,_barMin,_barMax];
						if (getnumber (_itemCfg >> "type") == 4) then {
							[
								[],
								[],
								[_statMaxRange,localize "str_a3_rscdisplayarsenal_stat_range"],
								[_statHit,localize "str_a3_rscdisplayarsenal_stat_impact"],
								[_statMass,localize "str_a3_rscdisplayarsenal_stat_weight"]
							] call _fnc_showStats;
						} else {
							_statHit = sqrt(_statHit^2 * _statInitSpeed); //--- Make impact influenced by muzzle speed
							[
								[_statReloadSpeed,localize "str_a3_rscdisplayarsenal_stat_rof"],
								[_statDispersion,localize "str_a3_rscdisplayarsenal_stat_dispersion"],
								[_statMaxRange,localize "str_a3_rscdisplayarsenal_stat_range"],
								[_statHit,localize "str_a3_rscdisplayarsenal_stat_impact"],
								[_statMass,localize "str_a3_rscdisplayarsenal_stat_weight"]
							] call _fnc_showStats;
						};
					};
				};
				case IDC_RSCDISPLAYARSENAL_TAB_UNIFORM;
				case IDC_RSCDISPLAYARSENAL_TAB_VEST;
				case IDC_RSCDISPLAYARSENAL_TAB_BACKPACK;
				case IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR: {
					_ctrlStats ctrlsetfade 0;
					_statsExtremes = uinamespace getvariable "bis_fnc_arsenal_equipmentStats";
					if !(isnil "_statsExtremes") then {
						_statsMin = _statsExtremes select 0;
						_statsMax = _statsExtremes select 1;

						_stats = [
							[_itemCfg],
							STATS_EQUIPMENT,
							_statsMin
						] call bis_fnc_configExtremes;
						_stats = _stats select 1;

						_statArmorShot = linearConversion [_statsMin select 0,_statsMax select 0,_stats select 0,_barMin,_barMax];
						_statArmorExpl = linearConversion [_statsMin select 1,_statsMax select 1,_stats select 1,_barMin,_barMax];
						_statMaximumLoad = linearConversion [_statsMin select 2,_statsMax select 2,_stats select 2,_barMin,_barMax];
						_statMass = linearConversion [_statsMin select 3,_statsMax select 3,_stats select 3,_barMin,_barMax];

						if (getnumber (_itemCfg >> "isbackpack") == 1) then {
							_statArmorShot = _barMin;
							_statArmorExpl = _barMin;
						}; //--- Force no backpack armor

						[
							if (_item == "H_Beret_blk") then {[0.95,localize "STR_difficulty3"]} else {[]}, //--- Easter egg
							[_statArmorShot,localize "str_a3_rscdisplayarsenal_stat_passthrough"],
							[_statArmorExpl,localize "str_a3_rscdisplayarsenal_stat_armor"],
							[_statMaximumLoad,localize "str_a3_rscdisplayarsenal_stat_load"],
							[_statMass,localize "str_a3_rscdisplayarsenal_stat_weight"]
						] call _fnc_showStats;
					};
				};
				default {
					if(_item == "G_Sport_Blackred")then{
						_ctrlStats ctrlsetfade 0;
						[
							[],
							[],
							[],
							[],
							[0.75,"Thee drinker"]
						] call _fnc_showStats;

					}else{
						_ctrlStats ctrlsetfade 1;
					};

				};
			};
			_ctrlStats ctrlcommit FADE_DELAY;
		} else {
			_ctrlStats = _display displayctrl IDC_RSCDISPLAYARSENAL_STATS_STATS;
			_ctrlStats ctrlsetfade 1;
			_ctrlStats ctrlcommit FADE_DELAY;
		};
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	case "HighlightMissingIcons": {
		_display = _this select 0;

		{
			_index = _x;
			_item = ["ListCurSel",[_index]] call SCRT_fnc_arsenal_loadoutArsenal;
			_ctrlTab = _display displayctrl(IDC_RSCDISPLAYARSENAL_TAB + _index);

			//check if some item was selected
			if(_item isEqualTo "")then{
				_ctrlTab ctrlSetTextColor [1,0.3,0.3,1];
			}else{
				_ctrlTab ctrlSetTextColor [1,1,1,1];
			};
		} forEach [IDCS_LEFT];
	};

	/////////////////////////////////////////////////////////////////////////////////////////// event
	case "KeyDown": {
		_display = _this select 0;
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		_center = (missionnamespace getvariable ["BIS_fnc_arsenal_center",player]);
		_return = false;
		_ctrlTemplate = _display displayctrl IDC_RSCDISPLAYARSENAL_TEMPLATE_TEMPLATE;
		_inTemplate = ctrlfade _ctrlTemplate == 0;

		switch true do {
			case (_key == DIK_ESCAPE): {
				if (_inTemplate) then {
					_ctrlTemplate ctrlsetfade 1;
					_ctrlTemplate ctrlcommit 0;
					_ctrlTemplate ctrlenable false;

					_ctrlMouseBlock = _display displayctrl IDC_RSCDISPLAYARSENAL_MOUSEBLOCK;
					_ctrlMouseBlock ctrlenable false;
				} else {
					if (true) then {["buttonClose",[_display]] spawn SCRT_fnc_arsenal_loadoutArsenal;} else {_display closedisplay 2;};
				};
				_return = true;
			};

			// //--- Enter
			// case (_key in [DIK_RETURN,DIK_NUMPADENTER]): {
			// 	_ctrlTemplate = _display displayctrl IDC_RSCDISPLAYARSENAL_TEMPLATE_TEMPLATE;
			// 	if (ctrlfade _ctrlTemplate == 0) then {
			// 		if (BIS_fnc_arsenal_type == 0) then {
			// 			["buttonTemplateOK",[_display]] spawn SCRT_fnc_arsenal_loadoutArsenal;
			// 		} else {
			// 			["buttonTemplateOK",[_display]] spawn SCRT_fnc_arsenal_loadoutArsenal;
			// 		};
			// 		_return = true;
			// 	};
			// };

			//--- Prevent opening the commanding menu
			case (_key == DIK_1);
			case (_key == DIK_2);
			case (_key == DIK_3);
			case (_key == DIK_4);
			case (_key == DIK_5);
			case (_key == DIK_1);
			case (_key == DIK_7);
			case (_key == DIK_8);
			case (_key == DIK_9);
			case (_key == DIK_0);

			//--- Tab to browse tabs
			case (_key == DIK_TAB): {
			};

			case (_key == DIK_LSHIFT): {
				uiNamespace setVariable ["arsenalShift", true];
				_return = true;
			};
			case (_key == DIK_LCONTROL): {
				uiNamespace setVariable ["arsenalCtrl", true];
				_return = true;
			};
			case (_key == DIK_LALT): {
				uiNamespace setVariable ["arsenalAlt", true];
				_return = true;
			};

			//--- Save
			case (_key == DIK_S): {
				if (_ctrl && (vehicle player isEqualTo player)) then {['buttonSave',[_display]] call SCRT_fnc_arsenal_loadoutArsenal;};
			};
			//--- Open
			case (_key == DIK_O): {
				if (_ctrl && (vehicle player isEqualTo player)) then {['buttonLoad',[_display]] call SCRT_fnc_arsenal_loadoutArsenal;};
			};

			//--- Vision mode
			case (_key in (actionkeys "nightvision") && !_inTemplate): {
				_mode = missionnamespace getvariable ["BIS_fnc_arsenal_visionMode",-1];
				_mode = (_mode + 1) % 3;
				missionnamespace setvariable ["BIS_fnc_arsenal_visionMode",_mode];
				switch _mode do {
					//--- Normal
					case 0: {
						camusenvg false;
						false setCamUseTi 0;
					};
					//--- NVG
					case 1: {
						camusenvg true;
						false setCamUseTi 0;
					};
					//--- TI
					default {
						camusenvg false;
						true setCamUseTi 0;
					};
				};
				playsound ["RscDisplayCurator_visionMode",true];
				_return = true;

			};
		};
		_return
	};

	/////////////////////////////////////////////////////////////////////////////////////////// event
 	case "KeyUp": {
		_display = _this select 0;
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		switch true do {
			case (_key == DIK_LSHIFT): {
				uiNamespace setVariable ["arsenalShift", false];
				_return = true;
			};
			case (_key == DIK_LCONTROL): {
				uiNamespace setVariable ["arsenalCtrl", false];
				_return = true;
			};
			case (_key == DIK_LALT): {
				uiNamespace setVariable ["arsenalAlt", false];
				_return = true;
			};
		};
		_return
	};

	/////////////////////////////////////////////////////////////////////////////////////////// event
	case "buttonClose": {
		_display = _this select 0;

		["RestoreTFAR"] call SCRT_fnc_arsenal_loadoutArsenal;

		//remove missing item message
		titleText["", "PLAIN"];

		_display closedisplay 2;
		if (missionname == "Arsenal") then {endmission "end1";};
		["#(argb,8,8,3)color(0,0,0,1)",false,nil,0,[0,0.5]] call bis_fnc_textTiles;
	};

	case "buttonSetLoadoutMenu": {
		_display = _this select 0;

		private _loadout = getUnitLoadout player;
		rebelLoadouts set [currentRebelLoadout, _loadout];
		publicVariable "rebelLoadouts";

		private _loadoutName = currentRebelLoadout call SCRT_fnc_misc_getLoadoutName;
		private _text = localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_loadout_saved";
		['showMessage',[_display, format ["%1 %2", _loadoutName, _text]]] call SCRT_fnc_arsenal_loadoutArsenal;
		playSound "A3AP_UiSuccess";
	};

	case "applyInitialLoadout": {
		private _loadoutName = currentRebelLoadout call SCRT_fnc_misc_getLoadoutName;
		private _text = localize "STR_antistasi_dialogs_hq_button_rebel_set_loadout_loadout_title";
		['showMessage',[_display, format ["%1 %2", _loadoutName,_text]]] call SCRT_fnc_arsenal_loadoutArsenal;

		localNamespace setVariable ["commanderLoadout", getUnitLoadout player];

		//prevents from dropping backpack on floor
		if (backpack player != "") then {
			removeBackpack player;
		};

		private _loadout = rebelLoadouts get currentRebelLoadout;

		if (isNil "_loadout") then {
			[player, 0, currentRebelLoadout] call A3A_fnc_equipRebel;
		} else {
			player setUnitLoadout _loadout;
		};
	};

	case "Close": {
		private _commanderLoadout = localNamespace getVariable ["commanderLoadout", [[],[],[],[],[],[],"","",[],["","","","","",""]]];
		player setUnitLoadout _commanderLoadout;
		localNamespace setVariable ["commanderLoadout", nil];

		currentRebelLoadout = nil;

		[] call SCRT_fnc_ui_toggleCommanderMenu;
		[] call SCRT_fnc_ui_createRebelLoadoutMenu;
	};

	///////////////////////////////////////////////////////////////////////////////////////////
	default {
		["Error: wrong input given '%1' for mode '%2'",_this,_mode] call BIS_fnc_error;
	};
};
