#!/bin/bash

for IMG_NAME in $@; do
  curl -u $NX_CRED -X 'POST' \
    "https://nexus.dev.pangeabiomed.com/service/rest/v1/script/ecr-auto-deploy/run" \
    -H 'Content-Type: text/plain' \
    -H 'accept: application/json' \
    -d $IMG_NAME
done
