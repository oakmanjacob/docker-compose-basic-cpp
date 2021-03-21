FROM alpine:3.13.2
WORKDIR /app
COPY . .
RUN apk add --update alpine-sdk boost-dev
RUN g++ src/server.cpp -o server -lboost_system
RUN g++ src/client.cpp -o client -lboost_system

EXPOSE 13