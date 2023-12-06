#variable "aws_profile" { type = string }
variable "aws_region" { type = string }
variable "env" { type = string }
variable "appName" { type = string }
variable "assumed_role" { type = string }

##################
#Tags
##################
variable "appOwner" { type = string }
variable "instanceManager" { type = string }
variable "dynatraceMonitorMode" { type = string }
variable "automation" { type = string }
variable "dbPlatform" { type = string }
variable "financeApplicationName" { type = string }
variable "financeSolutionOffering" { type = string }
variable "AMISNAPPolicy" { type = string }
variable "powerSchedule" { type = string }
variable "backUp" { type = string }
variable "name" { type = string }
variable "businessAppName" { type = string }
variable "description" { type = string }

variable "businessDomain" {
  type        = string
  description = "domain name or cluster name"
}

variable "alb_timeout" {
  type        = number
  description = "ALB Timeout"
  default     = 300
}

variable "alb_health_url" {
  type    = string
  default = "/actuator/health"
}
##################
# Networking
##################
variable "vpc_id" { type = string }
variable "subnets" { type = list(string) }
variable "cidr_list" { type = list(string) }

##################
# ALB
##################
variable "albLogBucket" { type = string }
variable "ssl_policy" { type = string }
variable "alb_name" { type = string }


####################
# Certificate
####################
variable "domain_cert_arn" { type = string }


variable "web_sec_grp_name" { type = string }