#!/bin/sh -l
cf api --skip-ssl-validation "$INPUT_CF_API"
cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

bash -c "CF_DOCKER_PASSWORD=$INPUT_CF_DOCKER_PASSWORD cf $*"
