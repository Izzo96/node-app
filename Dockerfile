FROM node:23.5.0-bullseye-slim

WORKDIR /app

COPY . .

RUN npm install

CMD [ "node", "index.js" ]