variable "awsRegion" {
  type = string
  description = "AWS region to use for deployment. Passed as a variable from the pipeline."
}

variable "awsEnv" {
  type = string
  description = "Value to use for Env tag - allowed values are dev, sit, uat and prod (lower-case only)"
}

locals {
  tags = {
    "CostCode"     = "CostCode",
    "ServiceName"  = "Connect",
    "ServiceOwner" = "ServiceOwner",
    "ServiceRole"  = "Connect",
    "env"          = var.awsEnv
  }

  projectPrefix = var.awsEnv == "devtest" ? "devtest" : ""
}

