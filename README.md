## Brief Description

This API it's a just a sample use for spring boot + spring data + spring data rest + spring actuator + swagger with java 11 version.

## Configure environment
1-) Setup

1.1-) Installing Java 11
Download JDK on http://www.oracle.com/technetwork/java/javase/downloads

Set JAVA_HOME env based on where the JDK will be installed. Add to PATH as JAVA_HOME\bin. 

To know if the java is installed, run "java -version" command on prompt should work 

1.2-) Installing Maven
Download the latest version on https://maven.apache.org/download.cgi

Define the variable MVN_HOME on your OS pointing to the extracted directory. Add to the PATH variable the MVN_HOME\bin.

To know if the mvn is installed, run the command "mvn --version" and check if its recognition by the SO or not;

1.3-) Installing database

Depends on what to be used, need to change the pom dependency and other datasource parameters

spring.datasource.url=jdbc:
spring.datasource.driver-class-name=

2-) Running application by command line:

mvn spring-boot:run

## Acessing application by swagger-UI

App: http://localhost:9090/spring-data-rest/api  
Swagger: http://localhost:9090/spring-data-rest/api/swagger-ui.html#/

OR via Docker

Using Purely:

docker build --no-cache -t spring-backend .
docker run -d --restart always --network=host -p 9090:9090 --name spring-backend -t spring-backend

Using Docker Swarm:

docker stack deploy --prune --compose-file docker-compose.yml spring-backend