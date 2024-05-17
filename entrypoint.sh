#!/bin/bash


gitlab-runner register --non-interactive \
  --url "$CI_SERVER_URL" \
  --registration-token "$REGISTRATION_TOKEN" \
  --executor "docker" \
   --docker-image "docker:latest" \
  --tag-list "$RUNNER_TAGS_LIST" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"

gitlab-runner run

exit 0
