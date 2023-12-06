resource "aws_cloudwatch_log_group" "this" {
  name              = "/ecs/${var.appName}/${var.env}"
  retention_in_days = 90
}
resource "aws_ecs_cluster" "cluster" {
  name = "${var.appName}-${var.env}" // if this were Fargate, we could reuse the cluster
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}