FROM fedora:32
RUN dnf -y install procps vim util-linux-user finger passwd
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker/
CMD [ "/opt/docker/startup.sh" ]

