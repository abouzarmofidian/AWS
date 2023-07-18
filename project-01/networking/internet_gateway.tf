#######################
#   Internet Gateway  #
#######################
resourec "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.gw_name
  }
}