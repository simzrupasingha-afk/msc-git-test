# Use an official OpenJDK image
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy Java file into container
COPY test.java .

# Compile Java file
RUN javac test.java

# Run Java program
CMD ["java", "Test"]