terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
}

# Get current AWS account info
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}


# The Bedrock agent resource
resource "aws_bedrockagent_agent" "my_agent" {
  agent_name              = "interface-agent"
  agent_resource_role_arn = "arn:aws:iam::${var.aws_account_id}:role/service-role/AmazonBedrockExecutionRoleForAgents_QM3EGMJKHJ"
  foundation_model        = "amazon.nova-lite-v1:0"
  description             = "An agent that'll interact with the user and, later, orchestrate other agents to achieve the user's goals."
  instruction             = "You help Pedro manage his life. For now we're in a mock stage, so just make stuff up."
  idle_session_ttl_in_seconds = 600
}
