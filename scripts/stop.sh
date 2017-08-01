#!/bin/bash

CMD='docker-compose ps -q kafka'
COUNT=`$CMD | wc -l | xargs`

if [[ $index -eq 0 ]]; then
    echo "Stopping $COUNT containers..."
    docker stop $($CMD)
    echo "Stopped $COUNT containers"
elif [[ $COUNT -gt 0 && $COUNT -ge $index ]]; then
    echo "Stopping 1 containers..."
    docker stop `$CMD | sed -n ${index}p`
    echo "Stopped 1 containers"
else
    echo "Invalid index [$index], size is $COUNT"
fi
