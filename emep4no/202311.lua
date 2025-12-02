help([==[

Description
===========
EMEP-MSC/W setup for Norwegian Air Quality


More information
================
 - Homepage: https://luftkvalitet.miljodirektoratet.no/
]==])

whatis([==[Description: EMEP-MSC/W setup for Norwegian AQ forecasts.]==])

local cwf = pathJoin(os.getenv("HOME"), "emep", "cwf")
local root = pathJoin(cwf, "modules", "EMEP4NO."..myModuleVersion())

setenv("EMEP_PROJECT", myModuleName())
setenv("EMEP_MODULES", myModuleFullName())
setenv("EMEP_VERSION", myModuleVersion())
setenv("EMEP_DATA",    pathJoin(root, "data"))
setenv("EMEP_DATA_ROOT",pathJoin(cwf, "data"))

--purge()
prepend_path("PATH",   pathJoin(root, "bin"))
load("Python/3.10.4-env-hpc1-gcc-2022a-eb")
