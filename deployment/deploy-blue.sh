#!/bin/bash

docker build -t lms-blue:1.0 .
docker run -d --name lms-blue -p 8081:8080 lms-blue:1.0

echo "Blue deployment completed"
