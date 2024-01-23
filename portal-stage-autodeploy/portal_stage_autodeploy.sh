#!/bin/bash

STAGE_DATA=$(echo "$1" | tr -d "[:space:]" ),$("$2" | tr -d "[:space:]"),$("$3" | tr -d "[:space:]")
echo "the stage data is =$STAGE_DATA="
curl -u "$NX_CRED" -X -v 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/script/portal-stage-deploy/run" \
  -H 'Content-Type: text/plain' \
  -H 'accept: application/json' \
  -d "$STAGE_DATA"
