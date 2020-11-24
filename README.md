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

Depends on what to be used, need to change the pom dependency and other datasource parameters like below:

spring.datasource.url=jdbc:
spring.datasource.driver-class-name=

PS: Currently is using H2 memory database

## Running the App

**1-) Via Maven**
mvn spring-boot:run

**2-) Via Docker**

**Building up**:

docker build --no-cache -t spring-backend .

docker run -d --restart always -p 9797:9797 --name spring-backend -t spring-backend

**Publishing (with tag version)**:

docker build --no-cache -t tsoutello/spring-backend:1.0.3 --tag tsoutello/spring-backend:1.0.3 .

docker push tsoutello/spring-backend:1.0.3

**Killing the container**:

docker container kill spring-backend

docker container prune

**Using Docker Swarm / Docker Compose**

docker stack deploy --prune --compose-file docker-compose.yml spring-backend

**3-) Via Kubernetes**

kubectl apply -f deployment.yaml

kubectl port-forward svc/spring 9797:9797


**Kubernetes - Deployment YAML creation:**

kubectl create deployment demo --image=spring-backend --dry-run -o=yaml > deployment.yaml 

kubectl create service clusterip demo --tcp=9797:9797 --dry-run -o=yaml >> deployment.yaml


## Accessing application by swagger-UI

- App: http://localhost:9797/spring-data-rest/api  
- Swagger: http://localhost:9797/spring-data-rest/api/swagger-ui.html#/
- curl localhost:9797/spring-data-rest/api/actuator/health