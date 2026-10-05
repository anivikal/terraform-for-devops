resource "aws_instance" "my_instance" {
  ami           = "ami-0b245cc5f82576748"
  instance_type = "t3.micro"
  user_data     = <<-EOF
    dnf install install python
    EOF
  tags = {
    Name                    = "aniiiiiii"
    new-tag-to-check-update = "helooo"
  }

}
resource aws_s3_bucket prod_bucket {
    bucket = "prod-22112223-2233"
    
}