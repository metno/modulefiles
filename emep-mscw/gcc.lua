help([==[

Description
===========
modules for compiling the EMEP-MSW/W model with data assimilation modules


More information
================
 - Homepage: https://github.com/metno/emep-mscw/releases
]==])

whatis([==[Description: compile EMEP-MSC/W model for forecasts.]==])

function starts_with(str, sub)
    return string.sub(str, 1, string.len(sub)) == sub
end

local host = os.getenv("HOSTNAME")
if     starts_with(host, "kelvin")     then host = "kelvin"
elseif starts_with(host, "celsius")    then host = "celsius"
elseif starts_with(host, "fahrenheit") then host = "fahrenheit"
end
setenv("MACHINE", host)

load("buildtool-easybuild/5.1.2-hpc8c13cca44", "GCC/13.3.0", "OpenMPI/5.0.3")
load("netCDF/4.9.2", "netCDF-Fortran/4.6.1")
load("FFTW/3.3.10", "FFTW.MPI/3.3.10")
--load("makedepf90")
