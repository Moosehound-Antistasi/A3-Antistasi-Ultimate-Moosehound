/*  Creates and maintains UAV support

Environment: Server, must be spawned

Arguments:
    <ARRAY> Active support data, see initSupports
    <STRING> Resource pool of support, "attack" or "defence"
    <STRING> Marker name of source airport
    <POS2D> Target position for airstrike
    <STRING> Classname of aircraft to use
    <SCALAR> Delay time in seconds
    <SCALAR> Amount of information to reveal to rebels, 0-1
*/

#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_suppData", "_resPool", "_airport", "_planeType", "_sleepTime", "_reveal"];
_suppData params ["_supportName", "_side", "_suppType", "_suppCenter", "_suppRadius", "_suppTarget"];

//Sleep to simulate preparation time
sleep _sleepTime;
private _spawnPos = markerPos _airport vectorAdd [0,0,300];
private _uav = createVehicle [_planeType, _spawnPos, [], 0, "FLY"];
[_side, _uav] call A3A_fnc_createVehicleCrew;
_groupVeh = group driver _uav;
{ [_x, nil, false, _resPool] call A3A_fnc_NATOinit } forEach (crew _uav);           // arguable
[-10 * count units _groupVeh, _side, _resPool] call A3A_fnc_addEnemyResources;
[_uav, _side, _resPool] call A3A_fnc_AIVEHinit;

#if __A3_DEBUG__
		_uav spawn {
			while {alive _this} do {
				sleep 1;
				private _localMarker = createMarkerLocal [format ["%1test%2", random 10000, random 10000], (position _this)];
				_localMarker setMarkerSizeLocal [1,1];
				_localMarker setMarkerAlpha 1; 
				_localMarker setMarkerTypeLocal "hd_dot";
				_localMarker setMarkerColorLocal "ColorRed";
			};

			if (!alive _this) then {
				private _localMarker = createMarkerLocal [format ["%1test%2", random 10000, random 10000], (position _this)];
				_localMarker setMarkerSizeLocal [1,1];
				_localMarker setMarkerAlpha 1; 
				_localMarker setMarkerTypeLocal "KIA";
				_localMarker setMarkerColorLocal "ColorRed";	
			};
		};
#endif

_wp = _groupVeh addWayPoint [_suppCenter, 0];
_wp setWaypointBehaviour "AWARE";
/* _wp setWaypointType "SAD"; */
_wp setWaypointType "LOITER";
_wp setWaypointLoiterType "CIRCLE_L";
_wp setWaypointSpeed "NORMAL";
_wp setWaypointLoiterRadius 600;
_groupVeh setCurrentWaypoint _wp;
_uav flyInHeight 400;           // maybe not necessary if we lock the waypoint
_groupVeh lockWP true;          // prevent exiting the SAD waypoint

private _timeout = time + 1200;
private _enemySide = [Occupants, Invaders] select (_side == Invaders);

while {time < _timeout && canMove _uav} do
{
    waitUntil { sleep 5; _uav distance2d _suppCenter < 1200 || !alive _uav};
    // check if launcher/crew are intact
    if !(canFire _uav and gunner _uav call A3A_fnc_canFight || alive _uav) exitWith {
        Info_1("%1 has been destroyed or disabled, aborting routine", _supportName);
    };

    private _friends = units _side inAreaArray [_suppCenter, 1000, 1000];
    private _friendGroups = allGroups select {(leader _x in _friends) and {isNull objectParent leader _x} };

    // Choose four random enemies to spot
    private _allEnemies = (units teamPlayer + units _enemySide) inAreaArray [_suppCenter, 500, 500];
    private _spottedEnemies = [];
    for "_i" from 0 to 3 do {
        if (count _allEnemies == 0) exitWith {};
        private _index = floor random (count _allEnemies);
        _spottedEnemies pushBack (_allEnemies # _index);
        _allEnemies deleteAt _index;
    };
    {
        private _group = _x;
        //or: [[_group, _spottedEnemies], { { _this#0 reveal [_x, 2] } forEach _this#1 }] remoteExec ["call", leader _group];
        { [_group, [_x, 2]] remoteExec ["reveal", leader _group] } forEach _spottedEnemies;
    } forEach _friendGroups;

    // check if we're past the active time/missiles
    if (time > _timeout) exitWith {
        Info_1("%1 has timed out, aborting", _supportName);
    };

    sleep 10;
};

_suppData set [4, 0];           // Set activesupport radius to zero, prevents adding further targets

[_groupVeh] spawn A3A_fnc_groupDespawner;
[_uav] spawn A3A_fnc_vehDespawner;

//Have the plane fly back home
if (canMove _uav) then
{
    while {count waypoints _groupVeh > 0} do { deleteWaypoint [_groupVeh, 0] };
    private _wpBase = _groupVeh addWaypoint [markerPos _airport, 0];
    _wpBase setWaypointSpeed "NORMAL";
    _wpBase setWaypointBehaviour "CARELESS";
    _groupVeh setCurrentWaypoint _wpBase;

    private _timeout = time + (_uav distance2d _spawnPos) / 20;
    waitUntil { sleep 2; (currentWaypoint _groupVeh != 0) or (time > _timeout) };
    if (time > _timeout) exitWith {};
    { deleteVehicle _x } forEach (units _groupVeh);
    deleteVehicle _uav;
};
