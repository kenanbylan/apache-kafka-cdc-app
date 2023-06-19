FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

# Install dependencies
RUN npm ci

# Copy the source code to the container
COPY src/producer.js /app/producer.js


# Set the command to run the producer.js file
CMD [ "node", "producer.js" ]