# syntax=docker/dockerfile:1

FROM node:15.8.0-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "build/server.js" ]