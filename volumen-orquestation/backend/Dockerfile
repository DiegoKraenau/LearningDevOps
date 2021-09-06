FROM node:latest

#Create directory
WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

EXPOSE 3150

CMD [ "node","index.js" ]