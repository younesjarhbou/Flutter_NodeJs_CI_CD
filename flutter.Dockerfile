# Base image
FROM cirrusci/flutter:2.5.1 AS builder

# Define working directory
WORKDIR /app

# Copy the pubspec.yaml file to the Docker image
COPY pubspec.yaml ./

# Install dependencies
RUN flutter pub get

# Copy the entire project to the Docker image
COPY . .

# Run the unit tests
RUN flutter test

