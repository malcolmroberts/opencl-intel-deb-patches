opencl-intel-deb-patches
========================

Patches for the Debian/Ubuntu version of the Intel OpenCL drivers.

Intel has provided Linux drivers for OpenCL on their CPUs
(https://software.intel.com/en-us/vcsource/tools/opencl-sdk), but the
deb files had some issues with the install scripts on Ubuntu (see
https://software.intel.com/en-us/forums/topic/515680).  Sadly, the
OpenCL drivers for Iris and HD GPUs from Intel are Windows-only.

The script in this repository applies patches to the .deb files
allowing the drivers to be installed on Debian and Ubuntu machines.

Patched files are available (as of 2014-09-01) at 
https://www.ualberta.ca/~malcolmr/opencl-intel-deb-patched/

Instructions:

1. Make sure that dpkg-deb is installed and in your path.

2. Download the .tgz containing the .deb files from 
   https://software.intel.com/en-us/vcsource/tools/opencl-sdk
   and unpack them using
     tar -xzvf <the file you downloaded>.tgz
   into the a directory containing patch/ and patch.sh .

3. Run ./patch.sh

4. Patched files are named *.patched.deb.  Note that
   opencl-1.2-intel-devel-android-4.4.0.117-1.x86_64.deb does not need
   to be patched, so no patched file is created.
