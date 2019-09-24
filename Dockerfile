# Dockerfile

# FROM webpronl/reveal-md
FROM node:12-alpine

RUN npm install -g reveal-md

EXPOSE 3000

WORKDIR /docs
ADD . /docs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
