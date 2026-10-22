data "aws_vpc" "def" {
    filter {
        name = "isDefault"
        values = ["true"]
    }
}
resource "aws_instance" "example" {
    ami = 
    count = 1
    subnet_id = data.aws_vpc.def.id
    
    instance_type = "t3.micro"


}