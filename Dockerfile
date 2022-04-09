FROM node:14.19.1

WORKDIR /client

COPY ./package*.json ./

RUN npm install && npm install -g http-server

COPY . .

EXPOSE 8080

VOLUME /client/src

COPY ./.env ./.env

RUN npm run build && cp dist/index.html dist/404.html

ENTRYPOINT [ "http-server", "/client/dist" ]
