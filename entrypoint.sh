#!/bin/bash

PORT=${PORT:-3000}

reveal-md --disable-auto-open --watch -port ${PORT} .
