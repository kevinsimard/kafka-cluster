#!/bin/bash

if [[ $num -gt 0 ]]; then
    echo "Creating $num containers..."
    docker-compose up -d --scale kafka=$num
    echo "Created $num containers"
else
    echo "Invalid number specified [$num]"
fi
