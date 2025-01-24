variable "region" {
description = "The AWS region to deploy resources"
type        = string
default     = "us-east-1"
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  type        = string
  default     = "/aws/lambda/cloud_facts"
}

variable "retention_days" {
  description = "The number of days to retain the logs in the CloudWatch log group"
  type        = number
  default     = 7
}

