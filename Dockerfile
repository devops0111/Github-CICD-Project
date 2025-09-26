FROM openjdk:17-jdk-slim
    
EXPOSE 8080

RUN ls 

ENV APP_HOME /usr/src/app

COPY app/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
