FROM openjdk:17
LABEL "Project"="restdocker"
LABEL "Author"="Anil"
ARG JAR_FILE=target/*.jar
EXPOSE 8080
COPY target/restdocker.jar app.jar
#ADD target/restdocker.jar restdocker.jar
ENTRYPOINT ["java","-jar","/app.jar"]