#!/bin/bash


curl -u $NX_CRED -X 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/tasks/deeppt-preproc-auto-deploy/run" \
  -H 'Content-Type: text/plain' \
  -H 'accept: application/json'
