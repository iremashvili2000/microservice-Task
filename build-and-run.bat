@echo off
REM Enable error handling
setlocal enabledelayedexpansion

REM Build both services
echo Building order-managment-service...
cd order-managment-service
call gradlew clean build || exit /b
cd ..

echo Building user-managment-service...
cd user-managment-service
call gradlew clean build || exit /b
cd ..

REM Run Docker Compose
echo Starting all services with Docker Compose...
docker-compose up -d || exit /b

echo All services are up and running.
pause