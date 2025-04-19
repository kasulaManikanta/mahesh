# Use lightweight Java 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy compiled JAR from target/ folder to container
COPY target/*.jar app.jar

# Expose port used by the app (adjust if needed)
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
