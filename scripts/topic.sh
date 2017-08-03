#!/bin/bash

CMD='docker-compose ps -q kafka'
COUNT=`$CMD | wc -l | xargs`

if [[ $partitions -eq 0 ]]; then partitions=100; fi
if [[ -z $factor ]]; then factor=$COUNT; fi

if [[ -n $name ]]; then
    ID=`$CMD | sed -n 1p`
    docker exec -it $ID bash -c "JMX_PORT='' \$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper \$KAFKA_ZOOKEEPER_CONNECT --replication-factor $factor --partitions $partitions --topic "$name" --if-not-exists"
else
    echo "The name parameter is required"
fi
