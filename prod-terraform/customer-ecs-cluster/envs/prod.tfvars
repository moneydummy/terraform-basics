#aws_profile = "PROD"
aws_region = "us-east-1"
# Engineering Optimization Vars for pipeline facilitation
assumed_role = "arn:aws:iam::598747928121:role/eng-opt-svc"
###############
# Tags
###############
# Required Tags
name                 = "maxder-cluster" // only for tagging
appName              = "maxder-cluster" // appName is used for tagging as well as infra components
businessAppName      = "Shared"
appOwner             = "Max-Night"
description          = "maxder domain ECS cluster to host services related to it."
env                  = "prod" // env is used for tagging as well as infra components
instanceManager      = "Middleware"
dynatraceMonitorMode = "N/A"

## Maybe required if advised
automation              = "Terraformed"
dbPlatform              = "N/A"
financeApplicationName  = "N/A"
financeSolutionOffering = "N/A"
powerSchedule           = "N/A"

## Needed if you require snaps or backup
AMISNAPPolicy = "N/A"
backUp        = "None"

########## end tag ###############

businessDomain = "maxder"


###############
# Networking
###############
vpc_id    = "vpc-8f6ad1ea"
subnets   = ["subnet-0baed06a2257e2c6a", "subnet-082d573c7a6484dfa", "subnet-0a88439c3450ad0b5"]
cidr_list = ["10.0.0.0/8"]

############################################################
# ALB, ALB TARGET GROUPS CONFIGURATION VARIABLES
############################################################
albLogBucket     = "der-prod-logs"
ssl_policy       = "ELBSecurityPolicy-FS-1-2-2019-08"
domain_cert_arn  = "arn:aws:acm:us-east-1:598747928121:certificate/33c4170a-ff55-4767-abb4-fb47b9c6132f"
alb_name         = "maxder-cluster"
web_sec_grp_name = "maxder-cluster-web-prod"