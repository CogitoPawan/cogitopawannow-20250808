version: '3.8'

services:
  web:
    build: .
    ports:
      - "5000:5000"
    environment:
      - DATABASE_URL=postgresql://postgres:password@db/sales_db
      - REDIS_URL=redis://redis:6379/0
      - KAFKA_BROKER_URL=kafka:9092
      - SECRET_KEY=super_secret_key
    depends_on:
      - db
      - redis
      - kafka

  db:
    image: postgres:13
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=password
    volumes:
      - postgres-data:/var/lib/postgresql/data

  redis:
    image: redis:6.0

  kafka:
    image: wurstmeister/kafka:latest
    ports:
      - 9092:9092
    environment:
      KAFKA_ADVERTISED_LISTENERS: INSIDE://kafka:9092,OUTSIDE://localhost:9092
      KAFKA_LISTENER_SECURITY_PROTOCOL_MAP: INSIDE:PLAINTEXT,OUTSIDE:PLAINTEXT
      KAFKA_LISTENERS: INSIDE://0.0.0.0:9092
      KAFKA_INTER_BROKER_LISTENER_NAME: INSIDE
    depends_on:
      - zookeeper

  zookeeper:
    image: wurstmeister/zookeeper:latest
    ports:
      - 2181:2181

volumes:
  postgres-data: