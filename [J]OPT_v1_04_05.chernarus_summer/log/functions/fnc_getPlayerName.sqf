/**
* Author: James
* retrieve player name from global var GVAR(playerList)
*
* Arguments:
* 0: <OBJECT> unit 
*
* Return Value:
* 0: <STRING> player name (as defined via profileName)
*
* Example:
* [player] call fnc_getPlayerName.sqf;
*
*/
#include "script_component.hpp"

params [
    ["_unit", objNull, [objNull], 1]
];

if (_unit isEqualTo objNull) exitWith{""};

private _uid = getPlayerUID _unit;
private _id = (GVAR(playerList) apply {_x select 0}) find _uid;
if (_id == -1) exitWith{false};
private _nameUnit = (GVAR(playerList) select _id) select 1;

_nameUnit