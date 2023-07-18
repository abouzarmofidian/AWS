####################
#   Routing Table  #
####################
resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = var.route_table_cidr
        gateway_id = aws_internet_gateway.internet_gateway.id
    }

    tags = {
        Name = "public_route_table"
    }
}

resource "aws_route_table_association" "public_subnet1_association" {
    subnet_id = aws_subnet.public_subnet1.id
    route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet2_association" {
    subnet_id = aws_subnet.public_subnet2.id
    route_table_id = aws_route_table.public_route_table.id
}