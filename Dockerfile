FROM node:15.8.0-alpine

WORKDIR /app

COPY . .

RUN npm start