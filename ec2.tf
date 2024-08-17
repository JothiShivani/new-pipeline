resource "aws_instance" "my-jk-instance" {
    ami = var.ami-id
    instance_type = var.instance-type
    availability_zone = "ap-south-1a"
  
    tags = {
    Name = "my-instance"
  }
}