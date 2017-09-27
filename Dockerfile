############################################################
# Dockerfile to build Vuejs project container images
# Based on node:alpine
############################################################
FROM node:alpine
MAINTAINER LiuYan <361112237@qq.com>

# Install vue-cli
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install  --quiet --global vue-cli
RUN apk add --no-cache git
RUN mkdir /code
VOLUME /code
WORKDIR /code
EXPOSE 8080
CMD vue -V