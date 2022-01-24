FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

COPY ./app /home/app

RUN npm install

RUN npm install forever -g

CMD ["node", "/home/app/server-node.js"]