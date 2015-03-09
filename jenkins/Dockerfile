FROM jenkins

MAINTAINER Bastiaan Schaap, Siteminds B.V. <b.schaap@siteminds.nl>

ENV LAST_UPDATED 20150303_1422

USER root

RUN apt-get update -qq && apt-get install -qqy curl
RUN curl -s https://get.docker.com/gpg | apt-key add -
RUN echo "deb http://get.docker.com/ubuntu docker main" > /etc/apt/sources.list.d/docker.list
RUN apt-get update -qq && apt-get install -qqy \
  git \
  lxc \
  curl \
  lxc-docker \
  ca-certificates \
  iptables

ADD jenkinsdocker.sh /usr/local/bin/jenkinsdocker.sh
RUN chmod +x /usr/local/bin/jenkinsdocker.sh

# Text file with definition of all plugins to install
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Because we're running Jenkins in Docker, we point
# the container's Docker to the host's Docker
VOLUME /var/lib/docker

EXPOSE 8080
EXPOSE 50000

ENTRYPOINT ["/usr/local/bin/jenkinsdocker.sh"]
