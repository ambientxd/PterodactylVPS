FROM ubuntu:22.04
MAINTAINER returnNull or ambient <docker@epicme.ga>
RUN adduser --disabled-password --home /home/container container && sh -c 'echo "root:ubuntu" | chpasswd'

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
