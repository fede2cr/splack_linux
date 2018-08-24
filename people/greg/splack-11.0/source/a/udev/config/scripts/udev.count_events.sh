#!/bin/sh -e
#
# Wait for all running udev processes to finish

while true; do
    running=$(cat /proc/*/status 2> /dev/null | grep -c -E '^Name:.udevd?$')
    if [ $running -gt 1 ]; then
	echo "udevd: $running processes running" >&2
	sleep 1 
    else
        # Previously this lock file was /var/lock/subsys/coldplug...
        # but we need to use /dev here since the / partition is read-only
        # and /var might not even be mounted at all.
	rm -f /dev/coldplug
	exit 0
    fi
done
