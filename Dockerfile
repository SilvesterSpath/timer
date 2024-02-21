FROM node:16.14.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN chown -R 1000:1000 /usr/src/app
USER node

EXPOSE 3000
EXPOSE 5000

CMD [ "npm", "run", "dev" ]