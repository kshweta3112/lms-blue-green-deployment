#!/bin/bash

docker build -t lms-green:2.0 .
docker run -d --name lms-green -p 8082:8080 lms-green:2.0

echo "Green deployment completed"
