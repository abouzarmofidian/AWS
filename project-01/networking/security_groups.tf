#######################################
#   Security Group allow ssh && http  #
#######################################

resource "aws_security_group" "web_server_sg" {
  name        = "web_server_sg"
  description = "Allow ssh and http"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr_open]
  }

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_open]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_open]
  }
}

#######################################
#   Security Group for database       #
#######################################
resource "aws_security_group" "database_sg" {
  name        = "database_sg"
  description = "Allow traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description     = "mysql"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.web_server_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_open]
  }
}