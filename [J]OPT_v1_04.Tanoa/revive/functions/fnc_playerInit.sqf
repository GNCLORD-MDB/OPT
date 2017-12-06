/**
* Author: James
* initialize variables and addAction menu entries for a player after respawn
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_playerInit.sqf;
*
*/
#include "script_component.hpp"

if (isNull player) then {
	diag_log "OPT Debug: Null player in revive Init found";
};

// Clear event handler before adding it
player removeAllEventHandlers "HandleDamage";
player addEventHandler ["HandleDamage", FUNC(handleDamage)];

player setVariable ["FAR_isUnconscious", 0, true];
player setVariable ["FAR_isStabilized", 0, true];
player setVariable ["FAR_isDragged", 0, true];
player setVariable ["FAR_healer", objNull, true];
player setCaptive false;
FAR_isDragging = false;
FAR_medequipArray = [];

closeDialog 5566;
closeDialog 5651;

[true] call FUNC(toggleTFAR);

[QGVAR(removeMarker), [player]] call CBA_fnc_globalEvent; // remove Marker on all clients

// add ACE interaction menus to all other clients
[QGVAR(createACEActions), [player]] call CBA_fnc_remoteEvent;