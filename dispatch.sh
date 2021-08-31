#!/bin/bash

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/nalbam/argocd-env-demo/dispatches \
  -d '{"event_type":"gitops"}'

# curl -sL \
#   -X POST \
#   -H "Accept: application/vnd.github.v3+json" \
#   https://api.github.com/repos/nalbam/argocd-env-demo/dispatches \
#   -d '{"event_type":"gitops","client_payload":{"project":"nalbam-docs","version":"v0.1.1"}}'
