## Brief Description

This API it's a just a sample use for spring boot + spring data + spring data rest + spring actuator + swagger with java 17 version.

## Configure environment
1-) Setup

1.1-) Installing Java 17
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

docker build --no-cache -t rest-service .

docker run -d --restart always -p 9797:80 --name rest-service -t rest-service

**Publishing (with tag version)**:

docker build --no-cache -t tsoutello/rest-service:1.0.0 --tag tsoutello/rest-service:1.0.0 .

docker push tsoutello/rest-service:1.0.0

**Killing the container**:

docker container kill rest-service

docker container prune

**Using Docker Swarm / Docker Compose**

docker stack deploy --prune --compose-file docker-compose.yml rest-service

**3-) Via Kubernetes**

kubectl apply -f deployment.yaml

kubectl port-forward svc/rest-service 9797:80

**Kubernetes - Deployment YAML creation:**

kubectl create deployment demo --image=rest-service --dry-run -o=yaml > deployment.yaml 

kubectl create service clusterip demo --tcp=80:80 --dry-run -o=yaml >> deployment.yaml


## Accessing application by swagger-UI

- App: http://localhost:80/rest-service/api  
- Swagger: http://localhost:80/rest-service/api/swagger-ui.html#/
- curl localhost:80/rest-service/api/actuator/health