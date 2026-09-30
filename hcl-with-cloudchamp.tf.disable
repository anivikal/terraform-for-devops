#single line  comment
/*mjultiline comments 
like this*/
#block
block_type {
    attri1 = 
    attri2 = 

}
#attributes
key = value

#datatypes
"string"
number 3 
boolean true false

list 
list = ["item1", "item2"]  etc..............
security_groups = ["","",""]
Maps 
variable "exapmle_map" {
    type = Map
    default = {key1 = "", key2 = ""}etc......


}

locals {
    my_map = { "name" = "john doe', "age" = 30, "is_admin" = true}

}
locals.my_map["age"]

#conditions
resource aws_instance "server"{
    instance_type = var.environment == "development" ? "t2.micro" : "t2.small"

}
#functions
locals {
    name = "jone  cena"
    fruits = ["banana", "apple", "mango"]
    message = "Hello ${upper(local.name)}, you like ${join(",", local.fruits)}
}
#resource dependency
#impilicit and explicit dependency
resource aws_instance my_instance{
    vpc_security_groups_ids = aws_security_group.mysg.id
}
resource "aws_security_group" mysg {
    #inbound_rules

}