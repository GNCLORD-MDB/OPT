/**
* Author: James
* initialize all flag poles with optionall marker and add action menu for playersNumber
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_setupFlag.sqf;
*
*/
#include "script_component.hpp"

/* BY JAMES */
// Variablen opt_csat_flags und opt_nato_flags werden durch die HL & PL von NATO und CSAT in der Warmup-Phase am Kartenboard ausgewaehlt
// siehe mission\functions\fnc_chooseFlag für Details

// fallback if no flag was chosen -> random war!
if (count GVARMAIN(nato_flags) == 0) then { 
    GVARMAIN(nato_flags) = [selectRandom (allMissionObjects "FlagPole_F" select {_x getVariable "owner" == west})];
    publicVariable QGVARMAIN(nato_flags);
};

if (count GVARMAIN(csat_flags) == 0) then { 
    GVARMAIN(csat_flags) = [selectRandom (allMissionObjects "FlagPole_F" select {_x getVariable "owner" == east})];
    publicVariable QGVARMAIN(csat_flags);
};



{
    // erzeuge fuer jede gefundene Flagge einen Marker auf der Karte
    if (OPT_FLAG_MARKER == 1) then {
        private _markerName = format["marker_%1_%2", _x, _forEachIndex];
        private _marker = createMarker [_markerName, getPos _x];
        _marker setMarkerType "flag_CSAT";
        _x setVariable ["opt_var_flag_marker", _marker, true];
    };

} foreach GVARMAIN(csat_flags);

{   
    // erzeuge fr jede gefundene Flagge einen Marker auf der Karte
    if (OPT_FLAG_MARKER == 1) then {
        private _markerName = format["marker_%1_%2", _x, _forEachIndex];
        private _marker = createMarker [_markerName, getPos _x];
        _marker setMarkerType "flag_NATO";
        _x setVariable ["opt_var_flag_marker", _marker, true];
    };

} foreach GVARMAIN(nato_flags);

/*
Fuer jede Flagge in einem Sektor: unverwundbar, Logistik-Script aus
Sowie Actionmeneintrag fuer Spieler
*/
{
    [QEGVAR(common,addAction), 
        [
            _x, 
            [
                'Flagge ziehen' call XRedText, 	// Anzeigetext
                {[_this select 0, _this select 1] call FUNC(captureFlag);}, 	// Skript
                [], 														// Parameter fr Skript
                1, 															// priority
                true, 													    // showWindow
                true,														// hideOnUse 
                "",															// shortcut
                format['((_target distance player) < 5) and vehicle player == player and %1 and (OPT_PLAYTIME - (serverTime - %2)) > 0 and (playerSide != (_target getVariable ["owner", sideUnknown]))', QGVARMAIN(missionStarted), QEGVAR(mission,startTime)] // Flagge kann nur nach Missionsstart, in 5 m Radius, ausserhalb eines Fahrzeugs und in Restspielzeit gezogen werden und nur von der anderen Seite
            ]
        ]
    ] call CBA_fnc_globalEventJIP; // jip is important, otherwise, clients which join later wont have the menu!
    _x allowDamage false; 						                    // Flagge kann nicht beschdigt werden
} foreach (GVARMAIN(csat_flags) + GVARMAIN(nato_flags));
