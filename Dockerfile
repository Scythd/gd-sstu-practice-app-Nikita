FROM openjdk:11
ARG WAR_FILE=staging/*.war
COPY ${WAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.jar"]
