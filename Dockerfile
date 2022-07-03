FROM node:15.8.0-alpine

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

RUN npm start