# Project: Order Managment and User Managment Microservices

This project contains two microservices, `order-managment-service` and `user-managment-service`, developed using Spring Boot. These services are built to demonstrate a microservice architecture with dependencies on PostgreSQL, Kafka, Hazelcast, and Docker for orchestration.

---

for testing using swager links (this is default values):

http://localhost:8888/swagger-ui/index.html

http://localhost:9999/swagger-ui/index.html

---

## Overview

- **Order Managment Service**: Handles order-related operations and communicates with the User Managment Service via Kafka.
- **User Managment Service**: Manages user-related data and provides authentication and authorization functionality.
- **Technology Stack**:
    - Java 17
    - Spring Boot
    - PostgreSQL
    - Kafka
    - Hazelcast
    - Docker & Docker Compose

---

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- **Java 17** or later
- **Gradle**
- **Docker** and **Docker Compose**

---

## Project Structure

```plaintext
project-root/
│
├── order-managment-service/
│   ├── src/                # Source code for the order service
│   ├── build.gradle        # Gradle build file
│   └── Dockerfile          # Dockerfile for the order service
│
├── user-managment-service/
│   ├── src/                # Source code for the user service
│   ├── build.gradle        # Gradle build file
│   └── Dockerfile          # Dockerfile for the user service
│
├── docker-compose.yml      # Docker Compose file for all services
├── init-database.sql       # SQL script to initialize the database
├── build-and-run.sh         # Bash script to build and start services
└── build-and-run.bat        # Batch script to build and start services





