# MongoDB Connector for Simple CDC Application Development Project with Apache Kafka

The project is to establish a system where the message produced by one of the Consumer and Producer is consumed by the other.

<br>


<img src= "https://github.com/kenanbylan/apache-kafka-cdc-app/assets/76161957/13796c86-0659-46f1-822e-97a25555f6cf" />

These tutorials are focused on teaching you the essential features and functionality of the connector enabling you to get up and running quickly.

# Requirement

The MongoDB Kafka tutorial environment requires the following installed on your client:

- [Docker](https://docs.docker.com/get-docker/)
- [Git]()
- [NodeJS]()


The docker compose in this repository will create an environment that consists of the following:

- Apache Kafka
- Zookeeper
- Apache Kafka Connect
- MongoDB Connector for Apache Kafka (installed in Kafka Connect)
- MongoDB single node replica set

# Starting the Docker environment

Clone the repo then run the application with docker.
note: Make sure Docker desktop is running actively.

```
docker-compose up
```

# Usage 

After compose
Open 2 different terminals, then run the
``` node consumer.js ``` file in one terminal, then ``` node producer.js ``` in the other terminal you opened.
run the command.

- You can see the log output from the terminal.





