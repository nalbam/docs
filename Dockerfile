# Dockerfile

FROM node:12-alpine

RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="1" npm install -g reveal-md && \
    npm cache clean --force

EXPOSE 1948

WORKDIR /docs
ADD . /docs

# ADD entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]

CMD ["sh", "-c", "reveal-md /docs --disable-auto-open --watch"]
