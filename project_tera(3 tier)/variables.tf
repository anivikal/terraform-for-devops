resource "random_string" "ran_str" {
    length = var.ran_str_length

}

variable "ran_str_length" {
    description = "length for the unique str used for global resource names"
    default = 8
}

variable "main_name" {
    description  = "main name for the project"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "instance_count" {
    default = 1     

}
variable "instance_type" {
    default = "t3.micro"
}
variable "tags" {
    default = {
        project = var.main_name
    }
}