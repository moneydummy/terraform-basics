output "header" {
  value = "${var.name} sold his paiting at age ${var.age}"
}

output "ecs-image-arn" {
  value = var.image_id
}
/* command line argument
**  terraform plan -var="name=aman" -var="age=10" -var="image_id=ami-34234sfsdf"
*/