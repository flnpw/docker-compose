FROM debian:stable-slim

ARG VERSION_TAG=1.25.5
ARG ARTIFACT=docker-compose-Linux-x86_64
ARG URL=https://github.com/docker/compose/releases/download/$VERSION_TAG/$ARTIFACT
ENV BINARY=docker-compose

ADD $URL /usr/local/bin/$BINARY
RUN set -ex; \
  chmod 755 /usr/local/bin/$BINARY

ENTRYPOINT ["docker-compose"]
CMD ["--help"]
