module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "7.0.0"

  name = "${var.appName}-alb-${var.env}"

  load_balancer_type = "application"

  internal = true

  vpc_id          = var.vpc_id
  security_groups = data.aws_security_groups.web-security-grp.ids
  subnets         = var.subnets

  idle_timeout = var.alb_timeout

  https_listeners = [
    {
      port            = 443
      protocol        = "HTTPS"
      certificate_arn = "${var.domain_cert_arn}"
      ssl_policy      = var.ssl_policy
      action_type     = "fixed-response"
      fixed_response = {
        content_type = "application/json"
        message_body = "{ \"errors\" : [{\"errorMessage\" : \"Not Found\", \"errorCode\": \"404\"}]}"
        status_code  = "404"
      }
    }
  ]
}