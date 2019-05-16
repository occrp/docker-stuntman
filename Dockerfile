FROM debian:stretch
MAINTAINER Michał "czesiek" Czyżewski <czesiek@occrp.org>

RUN apt-get update && \
    apt-get install -y --no-install-recommends stuntman-server && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3478/tcp 3478/udp

ENTRYPOINT ["/usr/sbin/stunserver"]
