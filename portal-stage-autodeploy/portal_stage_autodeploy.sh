 #!/bin/bash
STAGE_DATA="$1,$2,$3"
echo "the stage data is =$STAGE_DATA="
curl -u "$NX_CRED" -X 'POST' \
  "https://nexus.dev.pangeabiomed.com/service/rest/v1/script/portal-stage-deploy/run" \
  -H 'Content-Type: text/plain' \
  -H 'accept: application/json' \
  -d "$STAGE_DATA"
