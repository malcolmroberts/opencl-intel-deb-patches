opencl-intel-deb-patches
========================

Patches for the Debian/Ubuntu version of the Intel OpenCL drivers.

Intel has provided Linux drivers for OpenCL on their CPUs and GPUs
(https://software.intel.com/en-us/vcsource/tools/opencl-sdk), but the
.deb files had some issues with the install scripts on Ubuntu (see
https://software.intel.com/en-us/forums/topic/515680).

The script in this repository applies patches to the .deb files
allowing the drivers to be installed on Debian and Ubuntu machines.

Patched files are avaialable (as of 2014-09-01) at 
https://www.ualberta.ca/~malcolmr/opencl-intel-deb-patched/
