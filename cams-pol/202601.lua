help([==[

Description
===========
EMEP-MSC/W setup for CAMS Policy Support (CAMS2_71)


More information
================
 - Homepage: https://policy.atmosphere.copernicus.eu/
]==])

whatis([==[Description: EMEP-MSC/W setup for CAMS2_71 forecasts.]==])

local cwf = pathJoin(os.getenv("HOME"), "emep", "cwf")
local apps = pathJoin(cwf, "modules")
local root = pathJoin(apps, "CAMS2-71."..myModuleVersion())

setenv("EMEP_PROJECT", myModuleName())
setenv("EMEP_MODULES", myModuleFullName())
setenv("EMEP_VERSION", myModuleVersion())
setenv("EMEP_DATA",    pathJoin(root, "data"))
setenv("EMEP_DATA_ROOT",pathJoin(cwf, "data"))

--purge()
prepend_path("PATH",      pathJoin(root, "bin"))
prepend_path("PYTHONPATH",pathJoin(apps, "python"))
load("Python/3.10.4-env-hpc1-gcc-2022a-eb")
