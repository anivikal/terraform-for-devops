resource aws_vpc example {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "example-vpc"
        managed_by = "terraform"
    }
}

resource aws_subnet private1 {
    vpc_id = aws_vpc.example.id
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "private1"
        managed_by = "terraform"
    }   
}
resource aws_subnet private2 {
    vpc_id = aws_vpc.example.id
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "private2"
        managed_by = "terraform"
    }   
}
resource aws_route_table private {
    vpc_id = aws_vpc.example.id
    subnet_id = [aws_subnet.private1.id, aws_subnet.private2.id]
    tags = {
        Name = "private"
        managed_by = "terraform"
    }   
}
