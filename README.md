# Kafka Cluster

## Code Structure

    ├── scripts
    │   ├── create.sh
    │   ├── start.sh
    │   ├── stop.sh
    │   └── topic.sh
    ├── .editorconfig
    ├── .gitattributes
    ├── .gitignore
    ├── docker-compose.yml
    ├── Makefile
    └── README.md

## Requirements

The `LOCAL_IP` environment variable needs to be set before starting the containers. This IP will be used to connect to Kafka Brokers. Use `ifconfig` command to find your local IP.

```
$ export LOCAL_IP=<ip_address>
```

## Commands

| Command                | Comment                  |
|------------------------|--------------------------|
| make create num=NUM    | Create containers        |
| make start index=INDEX | Start specific container |
| make stop index=INDEX  | Stop specific container  |
| make start             | Start all containers     |
| make stop              | Stop all containers      |
| make delete            | Delete containers        |
