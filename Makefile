export AWS_ACCESS_KEY_ID ?= test
export AWS_SECRET_ACCESS_KEY ?= test
SHELL := /bin/bash

include .env

usage:				## Show this help 
		@grep -F -h "##" $(MAKEFILE_LIST) | grep -F -v grep -F | sed -e 's/\\$$//' -e 's/##//'

install:			## Install dependencies
		@pip install -r requirements-dev.txt

build: 				## Build lambda in the lambda folder
		bin/build_lambda.sh;

terraform-setup:		## Deploy the application locally using terraform CLI
		$(MAKE) build
		cd terraform; \
		terraform init; \
		echo "Deploying Terraform configuration 🚀"; \
		terraform apply  --auto-approve; \
		echo "Paste the function URLs above to the WebApp 🎉";

terraform-destroy:		## Destroy all resources created locally using terraform scripts
		cd terraform; \
		terraform destroy --auto-approve;

.PHONY: usage install build terraform-setup terraform-destroy
