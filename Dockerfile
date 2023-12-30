# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest
LABEL "Project"="restdocker"
LABEL "Author"="Anil"
# Install necessary dependencies
RUN apt-get update -y && apt-get install git -y && apt-get install maven -y\
    openjdk-17-jdk

# Set the working directory
WORKDIR /app

# Clone the Spring Boot project from your Git repository
#RUN git clone https://github.com/anlkmr/restdocker.git .
RUN git clone https://anlkmr-admin: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@bitbucket.org/anlkmr/restdocker.git .
# Build the project
RUN ./mvnw package
#RUN mvn install


# Expose the port your Spring Boot application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "target/restdocker.jar"]