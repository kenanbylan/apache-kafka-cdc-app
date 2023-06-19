# Base image
FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json /app/package.json

# Install dependencies
RUN npm i

# Copy the source code to the container
COPY src/consumer.js /app/consumer.js

# Set the command to run the consumer.js file
CMD [ "node", "consumer.js" ]
