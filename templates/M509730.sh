!/bin/bash                                                                                                                                                        
find / -nouser -o -nogroup 2> /dev/null | /usr/bin/logger -p user.warn -t M509730

