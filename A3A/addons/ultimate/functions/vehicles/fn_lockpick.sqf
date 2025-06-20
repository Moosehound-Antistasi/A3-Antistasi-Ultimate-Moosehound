/*
    Author:
        Maxx, Silence
    
    Description:
        Adds the action to lockpick a vehicle locally
    
    Params:
        _vehicle <OBJECT>
    
    Dependencies:
        vehicleLockpickTime
    
    Scope:
        Client
    
    Environment:
        Unscheduled
    
    Usage:
        [_vehicle] call A3U_fnc_lockpick;
    
    Return:
        N/A
*/

params ["_vehicle"];

[ 
    _vehicle,
    localize "STR_A3AU_action_lockpick_title",
    "\a3\ui_f\data\igui\cfg\actions\repair_ca.paa",
    "\a3\ui_f\data\igui\cfg\actions\repair_ca.paa",
    "(_this distance _target < 10) && {alive _target} && {_target call A3U_fnc_isLocked}",
    "(_caller distance _target < 10) && {_caller call A3A_fnc_isEngineer}",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        // private _closestZone = (sidesX getVariable [([call A3U_fnc_lockpickZones, _caller] call BIS_fnc_nearestPosition), sideUnknown]);
        // if (_closestZone isEqualTo teamPlayer) exitWith {
        //     [_target, _actionId] call BIS_fnc_holdActionRemove;
        //     [_target, false] remoteExecCall ["A3U_fnc_setLock", (owner _target)];
        // };
        // Re-enable if instant lockpicking after capture is desired

        if !(_caller call A3A_fnc_isEngineer) then {
            [localize "STR_A3AU_action_lockpick_title", localize "STR_A3AU_action_lockpick_not_engineer"] call A3A_fnc_customHint;
        };
    },
    {
        params ["_target", "_caller", "_actionId", "_arguments", "_frame", "_maxFrame"];

        [_target, _caller, _actionId, _frame, _maxFrame] call A3U_fnc_lockpickOnProgress;
    },
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        [_target, _caller, _actionId] call A3U_fnc_lockpickOnSuccess;
    },
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        [_target, _caller] call A3U_fnc_lockpickOnFail;
    },
    [],
    vehicleLockpickTime,
    2026,
    false,
    false
] call BIS_fnc_holdActionAdd;