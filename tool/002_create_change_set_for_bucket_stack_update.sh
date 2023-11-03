#!/bin/bash

aws cloudformation create-change-set \
  --stack-name nfr-poc-cicd0001-bucket-stack \
  --change-set-name "commit-$(git show --format='%h' --no-patch)" \
  --template-body file://template/nfr-poc-cicd0001-bucket.yaml \
  --change-set-type UPDATE
