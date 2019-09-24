# Dockerfile

# FROM webpronl/reveal-md
FROM node:12-alpine

RUN npm install -g reveal-md

EXPOSE 8888

WORKDIR /docs
ADD . /docs

CMD ["reveal-md", "-w", "-port", "8888", "/docs"]
