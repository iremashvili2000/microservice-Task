#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Build the order-managment-service
echo "Building order-managment-service..."
cd order-managment-service
./gradlew clean build
cd ..

# Build the user-managment-service
echo "Building user-managment-service..."
cd user-managment-service
./gradlew clean build
cd ..

# Start all services using Docker Compose
echo "Starting all services with Docker Compose..."
docker-compose up -d

# Inform the user that everything is up and running
echo "All services are up and running."