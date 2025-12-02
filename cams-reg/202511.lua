help([==[

Description
===========
EMEP-MSC/W setup for CAMS Regional Air Quality (CAMS2_40)


More information
================
 - Homepage: https://atmosphere.copernicus.eu/european-air-quality-forecast-plots/
]==])

whatis([==[Description: EMEP-MSC/W setup for CAMS2_40 forecasts.]==])

local cwf = pathJoin(os.getenv("HOME"), "emep", "cwf")
local apps = pathJoin(cwf, "modules")
local root = pathJoin(apps, "CAMS2-40."..myModuleVersion())

setenv("EMEP_PROJECT", myModuleName())
setenv("EMEP_MODULES", myModuleFullName())
setenv("EMEP_VERSION", myModuleVersion())
setenv("EMEP_DATA",    pathJoin(root, "data"))
setenv("EMEP_DATA_ROOT",pathJoin(cwf, "data"))

--purge()
prepend_path("PATH",      pathJoin(root, "bin"))
prepend_path("PYTHONPATH",pathJoin(apps, "python"))
load("Python/3.10.4-env-hpc1-gcc-2022a-eb")
