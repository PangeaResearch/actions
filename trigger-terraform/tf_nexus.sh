#!/bin/bash


curl -u $NX_CRED -X 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/script/trigger_terraform/run" \
  -H 'Content-Type: text/plain' \
  -H 'accept: application/json' \
  -d '$TF_DIR'
