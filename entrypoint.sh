#!/bin/bash

PORT=${PORT:-3000}

# reveal-md --disable-auto-open --watch -port ${PORT} .
node node_modules/.bin/reveal-md --disable-auto-open --watch -port ${PORT} .
