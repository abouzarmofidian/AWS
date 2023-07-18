###############################
###       Web Instance 1   ####
###############################
resource "aws_instance" "web-instance1" {
  ami                    = var.web_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]
  user_data              = file("apache.sh")
  subnet_id              = aws_subnet.public_subnet1.id
  key_name               = "two-tier"

  tags = {
    Name = "instance1"
  }
}
###############################
###       Web Instance 2   ####
###############################
resource "aws_instance" "web-instance2" {
  ami                    = var.web_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]
  user_data              = file("apache.sh")
  subnet_id              = aws_subnet.public_subnet2.id
  key_name               = "two-tier"

  tags = {
    Name = "instance2"
  }
}