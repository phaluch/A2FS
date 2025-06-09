variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "aws_profile" {
  description = "The AWS profile to use for authentication"
  type        = string
  
}

variable aws_account_id {
  description = "The AWS account ID where resources will be deployed"
  type        = string
}

variable "agent_id" {
  description = "The ID of the Bedrock agent to manage"
  type        = string
}