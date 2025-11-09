# Use an appropriate base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files (if Node.js app)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Bind mount points for volumes

# Expose port
EXPOSE 80

# Start the application
CMD ["node", "server.js"]