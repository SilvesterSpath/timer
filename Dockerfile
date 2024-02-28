# Use node base image
FROM node:16.14.0-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Build your application (replace this with your actual build command)
RUN npm run build

# Install serve package globally
RUN npm install -g serve

# Expose port
EXPOSE 5000
EXPOSE 3000

# CMD to run serve and node server.js concurrently
CMD ["sh", "-c", "serve -s build & node server.js"]
