#!/bin/bash

aws cloudformation create-change-set \
  --stack-name nfr-poc-cicd0001-sample-loggroup-stack \
  --change-set-name "commit-$(git show --format='%h' --no-patch)" \
  --template-body file://template/nfr/poc/cicd0001/sample-loggroup.yaml \
  --change-set-type CREATE
