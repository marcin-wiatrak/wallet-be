FROM node:15.8.0-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
RUN npm install pm2 -g
RUN npm run build
COPY ./dist .
EXPOSE 4000
CMD npm start