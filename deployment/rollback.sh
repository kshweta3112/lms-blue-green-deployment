#!/bin/bash

sudo sed -i 's/127.0.0.1:8082/127.0.0.1:8081/' /etc/nginx/sites-available/lms

sudo nginx -t

if [ $? -eq 0 ]; then
    sudo systemctl reload nginx
    echo "Rollback to Blue completed"
else
    echo "Nginx configuration failed"
    exit 1
fi
