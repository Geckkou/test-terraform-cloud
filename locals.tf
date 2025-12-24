locals {
  service_name = "Automation"
  app_team     = "Cloud Team"
  createdby    = "Terraform"

  team        = "DevOps"
  application = "Terraform Associate"
  server_name = "ec2-${var.environment}-api-${var.variables_sub_az}"

  Environment = terraform.workspace
  Owner       = "Alexandre"
  Project     = "Infrastructure as Code"



  common_tags = {
    Name      = lower(local.server_name)
    Owner     = lower(local.Owner)
    Team      = lower(local.team)
    App       = lower(local.application)
    Service   = lower(local.service_name)
    AppTeam   = lower(local.app_team)
    CreatedBy = lower(local.createdby)
  }

  ingress_rules = [{
    port        = 443,
    description = "HTTPS Traffic"
    },
    {
      port        = 80,
      description = "HTTP Traffic"
    }
  ]
}