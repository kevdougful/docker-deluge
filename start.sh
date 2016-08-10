#!/bin/sh

set -e

echo $DELUGED_USER:$DELUGED_PASS:10 >> /var/lib/deluge/auth

/usr/bin/deluged -c /var/lib/deluge -d -l /var/log/deluge/daemon.log -L info &
/usr/bin/deluge-web -c /var/lib/deluge -l /var/log/deluge/web.log -L info
