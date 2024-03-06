# Use OpenJDK 11 as the base image
FROM public.ecr.aws/docker/library/openjdk:11-slim

# Set the working directory in the container
WORKDIR /app

# Copy deployable.module artifact into the container
# Use proper context in kaniko
COPY ./target/*.jar app.jar

# Command to run the application specifying the main class explicitly
CMD ["java", "-jar", "app.jar"]
