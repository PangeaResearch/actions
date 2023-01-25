#!/bin/bash


curl -u $NX_CRED -X 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/tasks/$NX_TASK_ID/run" \
  -H 'accept: application/json'