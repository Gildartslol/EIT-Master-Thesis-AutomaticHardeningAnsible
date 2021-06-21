#!/bin/bash                                                                                                                                                         
/usr/bin/timeout -k 60 43200 /usr/bin/find /tmp -type l -and -lname '/*' -or -lname '*..*' | /usr/bin/logger -p user.warn -t M805036

