/**
* Author: James
* initialize mission EH (always global, that is runs several times if added to clinets!)
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_initServerMissionEH.sqf;
*
*/
#include "script_component.hpp"

GVAR(EH_EntityRespawned) = addMissionEventHandler ["EntityRespawned", {
    params ["_newEntity", "_oldEntity"];

    [QEGVAR(common,addAction), [_newEntity, [TRAINING_ACTION_TELEPORT call XGreyText, {[] call FUNC(teleport)}, [], 0, false, true, '', "alive _target"]], _newEntity] call CBA_fnc_targetEvent;
    [QEGVAR(common,addAction), [_newEntity, [TRAINING_ACTION_FLAG call XGreyText, {createDialog QGVAR(dlg_flag)}, [], 0, false, true, '', "alive _target and _target == player"]], _newEntity] call CBA_fnc_targetEvent;
}];