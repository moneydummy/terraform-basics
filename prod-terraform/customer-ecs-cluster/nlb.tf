module "nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "7.0.0"

  name = "${var.businessDomain}-nlb-${var.env}"

  load_balancer_type = "network"

  internal = true

  vpc_id  = var.vpc_id
  subnets = var.subnets

  http_tcp_listeners = [
    {
      port               = 443
      protocol           = "TCP"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name             = "${var.businessDomain}-nlb-tg-${var.env}"
      backend_protocol = "TCP"
      backend_port     = 443
      target_type      = "alb"
      targets = [
        {
          target_id = data.aws_lb.alb.arn
        }
      ]
    }
  ]

}
