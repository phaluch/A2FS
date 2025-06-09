# Personal Agent Project

Simple Terraform configuration to manage an existing AWS Bedrock agent, for now.
Project for learning purposes.

## Setup

1. **Clone and setup:**
   ```bash
   git clone https://github.com/phaluch/A2FS.git
   cd A2FS
   ```

2. **Create your variables file:**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. **Edit `terraform.tfvars` with your values:**
   - `aws_profile`: Your AWS CLI profile name
   - `aws_region`: Your AWS region
   - `agent_id`: Your existing Bedrock agent ID (find in AWS console)

4. **Initialize Terraform:**
   ```bash
   terraform init
   ```

5. **Import your existing agent:**
   ```bash
   terraform import aws_bedrock_agent.my_agent $(grep agent_id terraform.tfvars | cut -d'"' -f2)
   ```

6. **Check what needs to be updated:**
   ```bash
   terraform plan
   ```

7. **Update `main.tf` resource block to match your agent's actual configuration until `terraform plan` shows no changes.**

## Files

- `main.tf` - Main Terraform configuration
- `variables.tf` - Variable definitions
- `terraform.tfvars.example` - Example values (copy to `terraform.tfvars`)
- `terraform.tfvars` - Your actual values (**not committed to git**)

## Security

All sensitive values are stored in `terraform.tfvars` which is gitignored. Never commit actual agent IDs or AWS credentials to the repository.