FROM node:14.19.1

WORKDIR /client

COPY ./package*.json ./

RUN npm install && npm install -g http-server

COPY . .

RUN npm run build && cp dist/index.html dist/404.html

EXPOSE 8080

RUN echo -e "VUE_APP_BACKEND_HOST=${BACKEND_HOST}\nVUE_APP_BACKEND_PORT=${BACKEND_PORT}" > /client/.env

VOLUME /client/src

CMD [ "http-server", "/client/dist" ]
