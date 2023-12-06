output "instance-region" {
  value = upper(var.region)
  description = "ECS instace region"
}

output "security" {
  value = "ECS security groups are: ${join(", ",var.security-groups)}"
  description = "ECS security groups "
}

output "auto_scale_instace" {
  value = var.auto_scale
  description = "ECS instance is autoscale"
}