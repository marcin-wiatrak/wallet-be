# syntax=docker/dockerfile:1

FROM node:15.8.0-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY . .
RUN npm install --production
RUN npm run build
COPY . .

CMD [ "node", "build/server.js" ]