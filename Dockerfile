FROM node:17-slim

RUN apt-get update && apt-get install -y chromium libatk-bridge2.0 libxkbcommon-dev libgbm-dev

RUN npm i pm2 npm -g 

RUN mkdir /var/app && chown node /var/app
WORKDIR /var/app
