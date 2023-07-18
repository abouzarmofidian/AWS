#####################
#   Public Subnet1  #
#####################
data "aws_availability_zones" "available_az" {}

resource "aws_subnet" "public_subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet1_cidr
    map_public_ip_on_launch = true
    availability_zones = data.aws_availability_zones.available_az.names[0]
    depends_on = [aws_vpc.vpc]

    tags = {
        Name = var.name_subnet1
    }
}

#####################
#   Public Subnet2  #
#####################
resource "aws_subnet" "public_subnet2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet2_cidr
    map_public_ip_on_launch = true
    availability_zones = data.aws_availability_zones.available_az.names[1]
    depends_on = [aws_vpc.vpc]

    tags = {
        Name = var.name_subnet2
    }
}

######################
#   Private Subnet1  #
######################
resource "aws_subnet" "private_subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet3_cidr
    map_public_ip_on_launch = true
    availability_zones = data.aws_availability_zones.available_az.names[0]
    depends_on = [aws_vpc.vpc]

    tags = {
        Name = var.name_subnet3
    }
}

######################
#   Private Subnet2  #
######################
resource "aws_subnet" "private_subnet2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet4_cidr
    map_public_ip_on_launch = true
    availability_zones = data.aws_availability_zones.available_az.names[1]
    depends_on = [aws_vpc.vpc]

    tags = {
        Name = var.name_subnet4
    }
}