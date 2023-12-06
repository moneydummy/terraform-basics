#aws_profile = "DEV"
aws_region = "us-east-1"
# Engineering Optimization Vars for pipeline facilitation
assumed_role = "arn:aws:iam::996190702173:role/eng-opt-svc"

###############
# Tags
###############
# Required Tags
name                 = "maxder-cluster" // only for tagging
appName              = "maxder-cluster" // appName is used for tagging as well as infra components
businessAppName      = "Shared"
appOwner             = "Max-Night"
description          = "maxder domain ECS cluster to host services related to it."
env                  = "dev" // env is used for tagging as well as infra components
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
vpc_id    = "vpc-113d0d75"
subnets   = ["subnet-05c8a4ba7d14c36bf", "subnet-0e0437eb43920617c"]
cidr_list = ["10.0.0.0/8"]

#############################################
# VPC LINKS, NLB, TARGET GROUPS VARIABLES
#############################################
albLogBucket     = "der-dev-logs"
ssl_policy       = "ELBSecurityPolicy-FS-1-2-2019-08"
domain_cert_arn  = "arn:aws:acm:us-east-1:996190702173:certificate/f25adc05-8579-4d8c-afa3-f75bf7bde13b"
alb_name         = "maxder-cluster"
web_sec_grp_name = "maxder-cluster-web-dev"