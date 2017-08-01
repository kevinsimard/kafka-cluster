# Kafka Cluster

## Code Structure

    ├── scripts
    │   ├── create.sh
    │   ├── start.sh
    │   └── stop.sh
    ├── .editorconfig
    ├── .gitattributes
    ├── .gitignore
    ├── docker-compose.yml
    ├── Makefile
    └── README.md

## Commands

| Command                | Comment                  |
|------------------------|--------------------------|
| make create num=NUM    | Create containers        |
| make start index=INDEX | Start specific container |
| make stop index=INDEX  | Stop specific container  |
| make start             | Start all containers     |
| make stop              | Stop all containers      |
| make delete            | Delete containers        |
