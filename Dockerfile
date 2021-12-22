FROM node:12.10.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3002

CMD [ "node", "server.js" ]
