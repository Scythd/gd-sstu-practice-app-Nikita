FROM openjdk:11
ENV MYSQL_URL=$mysql_url
ENV MYSQL_USER=$mysql_user
ENV MYSQL_PASS=$mysql_pass
ARG WAR_FILE=staging/*.war
COPY ${WAR_FILE} app.war
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.profiles.active=active","-jar","/app.war"]
