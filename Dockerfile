FROM node:16.14.0-alpine

# Create app directory with write permissions 
RUN mkdir -p /app && chown -R node /app
WORKDIR /app

# Copy source code
COPY --chown=node package*.json ./
COPY --chown=node . .

USER node

RUN npm install 

EXPOSE 3000 5000

# Run server
CMD ["npm", "run", "dev"]