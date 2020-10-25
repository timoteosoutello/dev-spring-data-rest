FROM openjdk:11-jre-slim

ENV APP_HOME=/usr/app/

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY ./target/spring-data-rest.jar application.jar

EXPOSE 8080

CMD ["java","-jar","application.jar"]
