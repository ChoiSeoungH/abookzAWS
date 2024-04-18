FROM amazoncorretto:17

COPY abookz-0.0.1-SNAPSHOT.jar /app/abookz.jar

ENV APP_HOME /app
EXPOSE 8088
VOLUME /app/upload

WORKDIR $APP_HOME

ENTRYPOINT ["java","-jar","/app/abookz.jar"]