FROM tomcat:10.0-jdk17


RUN rm -rf /opt/tomcat/webapps && mkdir /opt/tomcat/webapps/
COPY cicd-project.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


