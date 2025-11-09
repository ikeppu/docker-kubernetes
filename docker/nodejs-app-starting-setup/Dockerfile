FROM node:18-alpine
# Set working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Because we add Workdir we can copy . .
COPY . .
# Expose port 3000
EXPOSE 80
# Default command to run the application
CMD ["node", "server.js"]