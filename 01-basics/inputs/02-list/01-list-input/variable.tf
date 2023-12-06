variable "names" {
  type = list(string)
  description = "Enter names"
  default = [ "test" ]
}

variable "in-bound-ports" {
  type = list(number)
  description = "Inbound POrts "
  default = [ 9090,8090,1001 ]
}