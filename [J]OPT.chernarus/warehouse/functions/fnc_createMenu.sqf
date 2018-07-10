/**
* Author: James
* add addAction menus to all buy pads as defined in editor
* all buy pad menus must have the variable opt_warehouse_data with 
* ["vehicletype", side] as data.
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_createMenu.sqf;
*
*/
#include "script_component.hpp"

// iteriere über alle Objekte und prüfe, ob die Varialbe opt_warehouse_data gesetzt ist.
{
    if (count (_x getVariable [QGVAR(data), []]) > 0) then {

        (_x getVariable QGVAR(data)) params ["_txt", "_type", "_side"];

        switch (_side) do {
            case west: {
                [
                    _x,
                    [
                        _txt call XBlueText,
                        compile QUOTE([_type] call FUNC(vehicleOrder)),
                        [],
                        1, 
                        true, 
                        true, 
                        "", 
                        '((_target distance player) < 3) and vehicle player == player'
                    ]
                ] remoteExecCall ["addAction", -2, QGVAR(jip_warehouseActionWest)];

            };
            case east: {                
                [
                    _x,
                    [
                        _txt call XRedText,
                        compile QUOTE([_type] call FUNC(vehicleOrder)),
                        [],
                        1, 
                        true, 
                        true, 
                        "", 
                        '((_target distance player) < 3) and vehicle player == player'
                    ]
                ] remoteExecCall ["addAction", -2, QGVAR(jip_warehouseActionEast)];

            };
            default {};
        };

        _x allowDamage false;
        _x enableSimulation false;
    }

} foreach entities "Thing";