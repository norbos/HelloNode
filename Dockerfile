FROM registry.access.redhat.com/ubi8/nodejs-14

WORKDIR /usr/src/app

COPY /src/package*.json ./

RUN npm install

COPY ./src/ .

EXPOSE 8000

CMD [ "node", "index.js" ]
