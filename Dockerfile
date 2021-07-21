FROM openjdk:11
ARG WAR_FILE=staging/*.war
COPY ${WAR_FILE} app.war
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.profiles.active=test","-jar","/app.war"]
