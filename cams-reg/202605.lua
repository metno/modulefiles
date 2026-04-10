help([==[

Description
===========
EMEP-MSC/W setup for CAMS Regional Air Quality (CAMS2_40)


More information
================
 - Homepage: https://atmosphere.copernicus.eu/european-air-quality-forecast-plots/
]==])

whatis([==[Description: EMEP-MSC/W setup for CAMS2_40 forecasts.]==])

function starts_with(str, sub)
    return string.sub(str, 1, string.len(sub)) == sub
end
function home()
    local host, home = os.getenv("HOSTNAME"), os.getenv("HOME")
    if     starts_with(host, "kelvin")     then home = "/home/met_lf"
    elseif starts_with(host, "fahrenheit") then home = "/home/sm_alvva"
    end
    return home
end

local version = "CAMS2-40."..myModuleVersion()
local cwf = pathJoin(home(), "emep", "cwf")
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
load("Python/3.12.3-env-hpc1-gcc-2024a-eb")
