FROM openjdk:17
LABEL "Project"="vprofile"
LABEL "Author"="Anil"

EXPOSE 8080
ADD target/restdocker.jar restdocker.jar
ENTRYPOINT ["java","-jar","/restdocker.jar"]