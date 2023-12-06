output "names" {
  value = var.names 
}
output "ports" {
  value = "Ports available : ${join(", ",var.in-bound-ports)}"
}