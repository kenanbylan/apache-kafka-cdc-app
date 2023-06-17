FROM node:18-alpine

WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm ci

COPY src/producer.js /app/producer.js

CMD [ "node", "producer.js" ]

 