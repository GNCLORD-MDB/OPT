#include "..\setup\setup.sqf"
diag_log format ["############################# %1 #############################", missionName];

XGreyText = {"<t color='#f0bfbfbf'>" + _this + "</t>"};
XRedText = {"<t color='#f0ff0000'>" + _this + "</t>"};
XOrangeText = {"<t color='#F3B601'>" + _this + "</t>"};
XBlueText = {"<t color='#655EDE'>" + _this + "</t>"};
XTuerkiesText = {"<t color='#00D3BF'>" + _this + "</t>"};

opt_allowedSides = [blufor, opfor];
opt_allow_movement = false; // globale Variable, muss jeder haben zu beginn
missionStarted = false;
///////////////////////////////////////////////////////////////////////////////////
// Global Variables
SM3_started		= false;

///////////////////////////////////////////////////////////////////////////////////

// Startparameter auslesen und als globale Variablen verfügbar machen
// By James: moderner Ansatz ohne 20 Zeilen Code
// Das Spiel liest bereits alle Parameter aus und speichert sie in "BIS_fnc_storeParamsValues_data"
// 1. Namen aller Parameter
// 2. führe globale Variable mit diesem Namen ein
_paramNames = ("true" configClasses (getMissionConfig "Params")) apply {configName _x};
{	
	// braucht nicht global sein, da init.sqf für jeden ausgeführt wird
	missionNamespace setVariable [_x, [_x] call BIS_fnc_getParamValue];
} forEach _paramNames;

diag_log format ["%1 --- preInit.sqf is processed",diag_ticktime];