FROM fedora:32
RUN dnf -y install procps vim util-linux-user finger passwd
RUN mkdir /opt/docker/
COPY * /opt/docker/.
WORKDIR /opt/docker/
CMD /bin/bash

