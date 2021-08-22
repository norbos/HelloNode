FROM registry.access.redhat.com/ubi8/nodejs-14
USER root

WORKDIR /usr/src/app

COPY /package*.json ./

RUN npm install

COPY ./src/ .

EXPOSE 8000

CMD [ "npm", "run", "start" ]
