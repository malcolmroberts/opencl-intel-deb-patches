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

Instructions:

1. Make sure that dpkg-deb is installed and in your path.

2. Downaload the .deb files (in a .tgz) from 
   https://software.intel.com/en-us/vcsource/tools/opencl-sdk
   and unpack them into the same directory as patch.sh

3. Run /patch.sh

4. Patched files are named *.patched.deb.  Note that 
   opencl-1.2-intel-devel-android-4.4.0.117-1.x86_64.deb does not need
   to be patched, so no patched file is created.
