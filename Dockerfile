FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/postgresql", "/var/lib/backup"]

EXPOSE 5432

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]

ENV CRON_ENABLED true

RUN apk update && \
  mkdir -p \
    /var/lib/postgresql && \
  apk add \
    postgresql \
    postgresql-client \
    postgresql-contrib && \
  rm -rf \
    /var/cache/apk/* \
    /var/lib/postgresql/*

ADD rootfs /
