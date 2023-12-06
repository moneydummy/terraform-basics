output "names" {
  value = tomap(var.data-maps)
}

# resource "aws_instance" "example_instance" {
#   ami           = "ami-0c55b159cbfafe1f0"
#   instance_type = "t2.micro"

#   tags = {
#     Name        = "Example Instance"
#     Environment = "Production"
#   }
# }