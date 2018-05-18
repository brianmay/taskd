FROM debian:stretch
MAINTAINER brian@linuxpenguins.xyz

RUN apt-get update -q --fix-missing && \
  apt-get -y upgrade && \
  apt-get -y install taskd && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 53589

VOLUME ["/var/lib/taskd"]

COPY . /opt/taskd/

ENTRYPOINT [ "/opt/taskd/start_server.sh" ]
