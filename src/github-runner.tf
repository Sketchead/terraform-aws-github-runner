module "github-runner" {
  source  = "github-aws-runners/github-runner/aws"
  version = "~> 5.0"

  aws_region = "eu-west-1"
  vpc_id     = "vpc-08336829729e650ad"
  subnet_ids = ["subnet-123", "subnet-456"]

  prefix = "gh-ci"

  github_app = {
    key_base64     = "base64string"
    id             = "1"
    webhook_secret = "webhook_secret"
  }

  webhook_lambda_zip                = "/mnt/d/terraform/aws-runners/download-lambda/webhook.zip"
  runner_binaries_syncer_lambda_zip = "/mnt/d/terraform/aws-runners/download-lambda/runner-binaries-syncer.zip"
  runners_lambda_zip                = "/mnt/d/terraform/aws-runners/download-lambda/runners.zip"
  enable_organization_runners = true
}