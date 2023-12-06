data "aws_security_groups" "web-security-grp" {
  filter {
    name   = "group-name"
    values = [var.web_sec_grp_name]
  }
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_lb" "alb" {
  name = "${var.appName}-alb-${var.env}"
}