# Base image 
# FROM alpine:latest
FROM node:12

# RUN mkdir -p /app
WORKDIR /app

# Copies your code file  repository to the filesystem 
COPY entrypoint.sh .

# change permission to execute the script and
# RUN chmod +x /app/entrypoint.sh
RUN chmod +x entrypoint.sh

COPY package*.json .
RUN npm install

COPY index.js .

COPY .vscode .vscode

# file to execute when the docker container starts up
ENTRYPOINT ["/app/entrypoint.sh"]