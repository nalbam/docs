#!/bin/bash

curl -sL \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -d '{"event_type":"gitops","client_payload":{"project":"nalbam-docs","version":"v0.1.1"}}' \
  https://api.github.com/repos/nalbam/argocd-env-demo/dispatches

#$ github dispatches create nalbam/argocd-env-demo gitops nalbam-docs v0.3.27
