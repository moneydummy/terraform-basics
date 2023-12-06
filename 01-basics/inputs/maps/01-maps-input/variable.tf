variable "data-maps" {
  type = map(string)
  default = {
    Name        = "Example Instance"
    Environment = "Production"
  }
}
#commanline, .tfvars