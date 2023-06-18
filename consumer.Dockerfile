# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy consumer.js
COPY src/consumer.js ./

# Set the command to run
CMD ["node", "consumer.js"]
