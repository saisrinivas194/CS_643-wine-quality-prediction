FROM maven:3.8.4-openjdk-8

WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package

# Set the entry point
ENTRYPOINT ["java", "-jar", "target/wine-prediction-1.0-SNAPSHOT.jar"] 