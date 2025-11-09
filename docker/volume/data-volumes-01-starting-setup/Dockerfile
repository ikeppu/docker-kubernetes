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

# Expose port
EXPOSE 80

# Define volume mount point
VOLUME ["/app/feedback"]

# Start the application
CMD ["node", "server.js"]