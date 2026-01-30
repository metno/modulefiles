whatis([==[Intel MKL missing FFTW3 Fortran interfaces.]==])

local cwf = pathJoin(os.getenv("HOME"), "emep", "cwf")
local root = pathJoin(cwf, "modules", "FFTW3-MKL")

setenv("FFTW_ROOT", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prereq("buildenv-intel/2023.1.0-hpc1")
