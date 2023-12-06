variable "name" {
  type = string
}

output "header" {
  value = "Welcome ${var.name} good to see you..!"
}