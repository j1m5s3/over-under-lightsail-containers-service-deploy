#!/bin/bash

if [ $1 == "nginx" ]; then
    echo "Pushing NGINX container to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name over-under-api-container-service --label over-under-api-nginx --image over-under-api-nginx/v1:latest;
fi

if [ $1 == "api" ]; then
    echo "Pushing API container to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name over-under-api-container-service --label over-under-api --image over-under-api/v1:latest;
fi

if [ $1 == "all" ]; then
    echo "Pushing NGINX and API containers to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name over-under-api-container-service --label over-under-api-nginx --image over-under-api-nginx/v1:latest;
    aws lightsail push-container-image --region us-east-1 --service-name over-under-api-container-service --label over-under-api --image over-under-api/v1:latest;
fi