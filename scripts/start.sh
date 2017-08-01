#!/bin/bash

CMD='docker-compose ps -q kafka'
COUNT=`$CMD | wc -l | xargs`

if [[ $index -eq 0 ]]; then
    echo "Starting $COUNT containers..."
    docker start $($CMD)
    echo "Started $COUNT containers"
elif [[ $COUNT -gt 0 && $COUNT -ge $index ]]; then
    echo "Starting 1 containers..."
    docker start `$CMD | sed -n ${index}p`
    echo "Started 1 containers"
else
    echo "Invalid index [$index], size is $COUNT"
fi
