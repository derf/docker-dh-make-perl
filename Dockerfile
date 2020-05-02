FROM debian:buster

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_LISTCHANGES_FRONTEND=none

WORKDIR /src/app

RUN apt-get update \
	&& apt-get -y install apt-file dh-make-perl libmodule-build-perl \
	&& apt-file update \
	&& apt-cache dumpavail | dpkg --merge-avail
