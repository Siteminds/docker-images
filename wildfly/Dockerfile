FROM jboss/wildfly
RUN /opt/wildfly/bin/add-user.sh --silent admin admin
ADD sample.war /opt/wildfly/standalone/deployments/
EXPOSE 8080
EXPOSE 9990
