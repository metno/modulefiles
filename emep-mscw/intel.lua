help([==[

Description
===========
modules for compiling the EMEP-MSW/W model


More information
================
 - Homepage: https://github.com/metno/emep-mscw/releases
]==])

whatis([==[Description: compile EMEP-MSC/W model.]==])

function starts_with(str, sub)
    return string.sub(str, 1, string.len(sub)) == sub
end

local host = os.getenv("HOSTNAME")
if     starts_with(host, "kelvin")     then host = "kelvin"
elseif starts_with(host, "celsius")    then host = "celsius"
elseif starts_with(host, "fahrenheit") then host = "fahrenheit"
end
setenv("MACHINE", host)

load("buildenv-intel/2023.1.0-hpc1")
load("netCDF-HDF5/4.9.2-1.12.2-hpc1")
--load("FFTW")
--load("makedepf90")
