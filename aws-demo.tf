resource "aws_instance" "example" {
  ami           = "ami-0582f842def89e9eb"
  instance_type = "t2.micro"
}