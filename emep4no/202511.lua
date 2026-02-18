help([==[

Description
===========
EMEP-MSC/W setup for Norwegian Air Quality


More information
================
 - Homepage: https://luftkvalitet.miljodirektoratet.no/
]==])

whatis([==[Description: EMEP-MSC/W setup for Norwegian AQ forecasts.]==])

local version = "EMEP4NO."..myModuleVersion()
local cwf = pathJoin(os.getenv("HOME"), "emep", "cwf")
local apps = pathJoin(cwf, "modules")
local root = pathJoin(apps, version)

setenv("EMEP_PROJECT", myModuleName())
setenv("EMEP_MODULES", myModuleFullName())
setenv("EMEP_VERSION", version)
setenv("EMEP_DATA",    pathJoin(root, "data"))
setenv("EMEP_DATA_ROOT",pathJoin(cwf, "Data"))

--purge()
prepend_path("PATH",      pathJoin(root, "bin"))
prepend_path("PYTHONPATH",pathJoin(apps, "python"))
load("Python/3.10.4-env-hpc1-gcc-2022a-eb")
