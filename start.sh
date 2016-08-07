#!/bin/sh

/usr/bin/deluged -d -l /var/log/deluge/daemon.log -L info
/usr/bin/deluge-web -l /var/log/deluge/web.log -L info
