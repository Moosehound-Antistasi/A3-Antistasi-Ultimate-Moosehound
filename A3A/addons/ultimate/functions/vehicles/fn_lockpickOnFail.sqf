params ["_target", "_caller"];

if (!(_caller call A3A_fnc_isEngineer) || !(_target call A3U_fnc_isLocked)) exitWith {};

private _zones = call A3U_fnc_lockpickZones;

private _closestZone = (sidesX getVariable [([_zones, _caller] call BIS_fnc_nearestPosition), sideUnknown]);

if (_closestZone isNotEqualTo teamPlayer) then {
    [_target, "alarmCar"] remoteExecCall ["say3D", 0, true]; 

    _caller setCaptive false;

    [localize "STR_A3AU_action_lockpick_title", localize "STR_A3AU_action_lockpick_aborted"] call A3A_fnc_customHint;
};