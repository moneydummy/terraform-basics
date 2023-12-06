variable "region" {
  type = string
}
variable "security-groups" {
  type = list(string)
}
variable "auto_scale" {
  type = bool
}