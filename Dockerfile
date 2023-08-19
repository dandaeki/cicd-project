FROM openjdk:17

# 패키지를 업데이트하고 필요한 패키지를 설치합니다.
RUN apt-get update -y && \
    apt-get install -y wget git

# Tomcat을 다운로드하고 설치합니다.
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.12/bin/apache-tomcat-10.1.12.tar.gz && \
    tar -xzvf apache-tomcat-10.1.12.tar.gz -C /opt && \
    rm apache-tomcat-10.1.12.tar.gz && \
    mv /opt/apache-tomcat-10.1.12 /opt/tomcat

RUN rm -rf /opt/tomcat/webapps && mkdir /opt/tomcat/webapps/
COPY cicd-project.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


