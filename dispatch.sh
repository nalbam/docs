#!/bin/bash

if [ -f ./target/VERSION ]; then
  VERSION=$(cat ./target/VERSION | xargs)
elif [ -f ./VERSION ]; then
  VERSION=$(cat ./VERSION | xargs)
fi

curl -sL -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -d "{\"event_type\":\"gitops\",\"client_payload\":{\"project\":\"${PROJECT}\",\"version\":\"${VERSION}\"}}" \
  https://api.github.com/repos/${GITOPS_REPO}/dispatches
