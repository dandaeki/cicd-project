FROM tomcat:10.0-jdk17


COPY cicd-project.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


