# Deluge Daemon Container


[![](https://images.microbadger.com/badges/image/kevdougful/deluge.svg)](https://microbadger.com/images/kevdougful/deluge "Get your own image badge on microbadger.com")

This container provides a Deluge Bittorrent daemon as well as the Deluge Web UI

Run the container:
```
docker run -d \
  -v /bt/progress:/progress \
  -v /bt/complete:/complete \
  -v /bt/autoadd:/autoadd \
  -v /bt/torrents:/torrents \
  -v /var/log/deluge:/var/log/deluge
  -p 58846:58846 \
  -p 58190:58190 \
  -p 58190:58190/udp \
  -p 8112:8112 \
  -e DELUGED_USER=<daemon user> \
  -e DELUGED_PASS=<daemon pass> \
  kevdougful/deluge
```
