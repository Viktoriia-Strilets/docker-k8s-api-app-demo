#!/bin/bash

echo " STOPPING OLD CONTAINERS "
docker compose down 


echo " BUILDING AND STARTING CONTAINERS "
docker compose up --build -d


echo " CONTAINERS STATUS "
docker ps


echo " APPLICATION URLS "

echo "FastAPI Swagger:"
echo "http://localhost:8000/docs"

echo ""
echo "pgAdmin:"
echo "http://localhost:5050"

echo ""
echo "PostgreSQL:"
echo "Host: localhost"
echo "Port: 5432"
echo "Database: todo_db"
echo "Username: postgres"

echo " DONE "

