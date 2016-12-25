#!/bin/bash
/etc/init.d/rsyslog start
/etc/init.d/lighttpd start
tail -f /var/log/syslog

