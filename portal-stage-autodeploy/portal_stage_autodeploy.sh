#!/bin/bash
curl -u "$NX_CRED" -X -v 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/script/portal-stage-deploy/run" \
  -H 'Content-Type: text/plain' \
  -H 'accept: application/json' \
  -d "$1,$2,$3"
