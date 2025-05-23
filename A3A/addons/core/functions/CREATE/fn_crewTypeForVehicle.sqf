/*
    File: fn_crewTypeForVehicle.sqf
    Author: Spoffy, CalebSerafin

    Description:
        Guesses the correct crew type for the given vehicle.

    Parameter(s):
        _side - Side of the vehicle [SIDE]
        _vehicle - Vehicle to guess on [OBJECT]

    Returns:
        Unit type [STRING]

    Dependences:
        A3A_vehClassToCrew [HASHMAP]     // Should be declares in fn_initVarServer.sqf

    Example(s):
        [west,cursorObject] call A3A_fnc_crewTypeForVehicle;  // Returns some NATO Crew Unit type
*/
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
params ["_side", "_vehicle"];


private _sideIndex = [west, east, independent, civilian] find _side; //opfor

private _typeX = typeOf _vehicle;

A3A_vehClassToCrew getOrDefault [_typeX,
    [
        FactionGetTiered(occ,"unitRifle"), 
        FactionGetTiered(inv,"unitRifle"), 
        FactionGet(reb,"unitCrew"), 
        FactionGet(civ,"unitMan")
    ]
] select _sideIndex;
