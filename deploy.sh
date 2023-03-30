#!/bin/bash

aws lightsail create-container-service-deployment --region us-east-1 --service-name over-under-container-service --containers file://containers.json --public-endpoint file://public-endpoint.json
