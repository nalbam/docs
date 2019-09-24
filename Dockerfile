# Dockerfile

FROM node:12-alpine

RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="1" npm install reveal-md && \
    npm cache clean --force

EXPOSE 3000

WORKDIR /docs
ADD . /docs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
