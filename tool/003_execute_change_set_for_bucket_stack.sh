#!/bin/bash

aws cloudformation execute-change-set \
  --stack-name nfr-poc-cicd0001-bucket-stack \
  --change-set-name "commit-$(git show --format='%h' --no-patch)"
