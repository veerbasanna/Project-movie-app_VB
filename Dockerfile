# Use the official Eclipse Temurin JDK 11 base image (OpenJDK 11)
FROM eclipse-temurin:11-jdk-alpine

# Expose the port your app will run on (e.g., 8080 for Spring Boot applications)
EXPOSE 8080

# Set the environment variable for the application home
ENV APP_HOME /usr/src/app

# Copy the JAR file from your target folder into the container
COPY target/*.jar $APP_HOME/app.jar

# Set the working directory inside the container
WORKDIR $APP_HOME

# Run the application using the java -jar command
CMD ["java", "-jar", "app.jar"]
