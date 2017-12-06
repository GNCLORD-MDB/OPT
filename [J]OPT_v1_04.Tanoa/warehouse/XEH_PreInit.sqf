#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

[] call FUNC(setupVehiclePool);
[] call FUNC(initCBAClassEvents);

if (isServer) then {
    [] call FUNC(initServerCBAEvents);

};