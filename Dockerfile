FROM ghcr.io/graalvm/graalvm-ce:java11-21.0.0.2

ENV APP_HOME=/usr/app/

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY target/rest-service.jar application.jar

EXPOSE 80

CMD ["java","-jar","application.jar"]
