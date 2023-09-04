FROM debian:stretch
LABEL maintainer="Depths Developers <admin@Depths.net>"
LABEL description="Dockerised DepthsCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
