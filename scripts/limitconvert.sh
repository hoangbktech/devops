#! /bin/bash
# This file is to limit the number of cores used by Alfresco transformation
# and prevent cpu throttling. The script limits ImageMagick convert to use less resources.
# Check the number of available cpu:s with
# cat /proc/cpuinfo | grep processor | wc -l
# If you have more, change to -c 0,1 if you have 4, -c 0,1,2 if you have 6 and so on.
# Check man taskset for more info.
#
# -------

/usr/bin/taskset -c 0 /usr/bin/convert $@
