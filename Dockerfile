# Dockerfile

FROM webpronl/reveal-md

EXPOSE 1948

WORKDIR /slides
ADD . /slides
