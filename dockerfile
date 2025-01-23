# Use the official OpenJDK image as the base image
FROM 920373018373.dkr.ecr.us-east-2.amazonaws.com/amazoncorretto:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container's working directory
COPY build/libs/UserService.jar app.jar

# Expose the port that the application will run on
EXPOSE 8082

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
