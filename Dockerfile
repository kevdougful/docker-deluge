FROM debian:jessie

MAINTAINER Kevin Coffey <kevdougful@gmail.com>

RUN apt-get update && \
    apt-get install -y deluged deluge-web && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Add deluge system user
RUN adduser --system --gecos "Deluge Service" --disabled-password --group --home /var/lib/deluge deluge

ADD start.sh /var/lib/deluge/start.sh

RUN mkdir -p /var/log/deluge
RUN chown -R deluge:deluge /var/log/deluge
RUN chmod -R 750 /var/log/deluge

EXPOSE 58846/tcp
EXPOSE 53160/tcp
EXPOSE 53160/udp
EXPOSE 8112/tcp

RUN chmod 770 /var/lib/deluge/start.sh
RUN /var/lib/deluge/start.sh
