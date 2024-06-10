#!/bin/bash

# Install dependencies
npm install

# Build Docker images
docker-compose build

# Start Docker containers
docker-compose up -d