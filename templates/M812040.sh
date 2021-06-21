#!/bin/bash
TMPFILE=`/bin/mktemp` || exit 1
SUIDLIST=/var/log/M812040_checklist.txt
/usr/bin/find / -xdev -type f -perm /06000 > $TMPFILE
/usr/bin/diff $SUIDLIST $TMPFILE | /usr/bin/logger -p user.warn -t M812040
DIFFSTAT=$?
if test $DIFFSTAT -gt 1
then
    echo "ERROR: Diffing failed."
    exit 1
fi
/bin/mv $TMPFILE $SUIDLIST

