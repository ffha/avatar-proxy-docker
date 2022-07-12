FROM node:alpine
WORKDIR /app
RUN apk add git wget curl
RUN git clone https://github.com/SourceGlobalCDN/avatar-proxy.git .
RUN rm Dockerfile
RUN yarn install
RUN yarn tsc
EXPOSE 3000
ENTRYPOINT node build/index.js
