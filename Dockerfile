# Base image with Node.js
FROM node:23-alpine3.19

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 80
EXPOSE 80

# Health check to verify the server is running
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD curl -f http://localhost/health || exit 1

# Start the server
CMD ["node", "index.js"]
