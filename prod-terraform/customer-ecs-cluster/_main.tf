provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = var.assumed_role
  }
  default_tags {
    tags = {
      Name                   = var.name
      AppName                = var.appName
      BusinessAppName        = var.businessAppName
      AppOwner               = var.appOwner
      Description            = var.description
      Environment            = var.env
      InstanceManager        = var.instanceManager
      Dynatrace_Monitor_Mode = var.dynatraceMonitorMode
      ## Maybe required if advised
      Automation               = var.automation
      DB_Platform              = var.dbPlatform
      Finance_ApplicationName  = var.financeApplicationName
      Finance_SolutionOffering = var.financeSolutionOffering
      PowerSchedule            = var.powerSchedule
      ## Needed if you require snaps or backup
      AMI_SNAP_Policy = var.AMISNAPPolicy
      Backup          = var.backUp
    }
  }
}

terraform {
  required_version = "> 0.14.4"
}
locals {
  # Common tags to be assigned to all resources
}
