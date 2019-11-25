#!/bin/sh -l

cf api --skip-ssl-validation "$INPUT_CF_API"
cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

if [ -n "$INPUT_CF_ORG" ] && [ -n "$INPUT_CF_SPACE" ]; then
  cf target -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"
fi

CF_DOCKER_PASSWORD = "$INPUT_CF_DOCKER_PASSWORD"
export CF_DOCKER_PASSWORD

sh -c "cf $*"
