
#################################################
# 1 Create VPC Link and associate to NLB
# NOTE: To create VPC_Link , NLB ARN is required
#################################################
# resource "aws_api_gateway_vpc_link" "vpc-link" {
#   name        = "${var.businessDomain}-vpc-link-${var.env}"
#   description = "VPC link to connect to the ${var.businessDomain} ECS Cluster"
#   target_arns = [aws_lb.nlb.arn]
#   depends_on  = [aws_lb.nlb]
# }