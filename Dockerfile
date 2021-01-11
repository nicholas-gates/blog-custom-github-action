# Base image 
# FROM alpine:latest
FROM node:12

# Copies your code file  repository to the filesystem 
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

COPY package*.json /
RUN npm install

COPY index.js /

# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]