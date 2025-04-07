# Use Node.js LTS base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install http-server globally
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Start http-server to serve files in /app
CMD ["http-server", "-p", "8080"]
