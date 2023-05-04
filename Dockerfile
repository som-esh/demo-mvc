FROM tomcat:8.5.31-jre8
EXPOSE 8080
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
COPY src /build/src
ADD http://docker:'Te$t1234'@192.168.56.105:8082/artifactory/docker-repo/com/ss/WebCalculator/0.0.1-SNAPSHOT/WebCalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
COPY /usr/local/tomcat/webapps/WebCalculator-0.0.1-SNAPSHOT.war /build
CMD ["catalina.sh", "run"]

