FROM jboss/wildfly
MAINTAINER Bastiaan Schaap, Siteminds B.V. <http://github.com/siteminds>
RUN /opt/jboss/wildfly/bin/add-user.sh --silent admin admin
ADD sample.war /opt/jboss/wildfly/standalone/deployments/
EXPOSE 8080
