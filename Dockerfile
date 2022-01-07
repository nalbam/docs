# Dockerfile

FROM node:13-alpine

LABEL maintainer="me@nalbam.com" \
      org.opencontainers.image.description="A Sample Docker image for Docs App" \
      org.opencontainers.image.authors="Jungyoul Yu, me@nalbam.com, https://www.nalbam.com/" \
      org.opencontainers.image.source="https://github.com/nalbam/sample-docs" \
      org.opencontainers.image.title="sample-docs"

RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="1" npm install -g reveal-md && \
    npm cache clean --force

EXPOSE 1948

WORKDIR /docs
ADD . /docs

# ADD entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]

CMD ["sh", "-c", "reveal-md /docs --disable-auto-open --watch --theme night"]
