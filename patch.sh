#!/bin/bash

# apply the patches in the patch directory to the .deb files for
# Intel's OpenCL.

for name in opencl-1.2-base-4.4.0.117-1.x86_64 opencl-1.2-devel-4.4.0.117-1.x86_64 opencl-1.2-intel-cpu-4.4.0.117-1.x86_64 opencl-1.2-intel-devel-4.4.0.117-1.x86_64
do
    echo ${name}.deb
    if [ -e ${name}.deb ]
    then
	
	# create temp dir for output of files:
	dir=`mktemp -d -p .`
	#dir=${name}
	#mkdir ${dir}

	# extract files:
	dpkg-deb -x ${name}.deb ${dir}
	
	# extract pre/post install scripts
	mkdir -p ${dir}/DEBIAN
	dpkg-deb -e ${name}.deb ${dir}/DEBIAN
	
	# apply the patch
	cat patches/${name}.patch | patch -p1 -d ${dir}
	
	# create the new deb file from the fixed dir.
	dpkg -b ${dir} ${name}.patched.deb
	
	# remove the directory
	rm -rf ${dir}
	
    else
	echo "Input file "${name}.deb" does not exist."
    fi
done

