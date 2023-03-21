resource "aws_instance" "My-VM" {
  ami                    = "ami-0f5470fce514b0d36"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]
  tags = {
    Name        = "my-project-instance"
    Environment = "PROD"
  }
  key_name = "london"
}


