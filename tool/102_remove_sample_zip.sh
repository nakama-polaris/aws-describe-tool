#!/bin/bash

aws s3api delete-object \
  --bucket "$(aws cloudformation list-exports \
    --query "Exports[?Name=='nfr-poc-cicd0001-bucket-name'].Value" \
    --output text)" \
  --key "functions/describe-stack-resources-function.zip"