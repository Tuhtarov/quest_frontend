FROM node:14.19.1

WORKDIR /client

COPY ./package*.json ./

RUN npm install && npm install -g http-server

COPY . .

RUN npm run build && cp dist/index.html dist/404.html

EXPOSE 8080

VOLUME /client/src

CMD [ "http-server", "/client/dist" ]
