#!/bin/bash

aws cloudformation create-change-set \
  --stack-name nfr-poc-cicd0001-stack \
  --change-set-name "commit-$(git show --format='%h' --no-patch)" \
  --template-body file://template/nfr/poc/cicd0001/function.yaml \
  --parameters file://template/nfr/poc/cicd0001/function.parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --change-set-type UPDATE
