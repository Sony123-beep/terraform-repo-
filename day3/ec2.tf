resource "aws_instance" "prod" {
    ami = var.ami
    instance_type = var.type
    key_name = "contro-machine"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "myec2"
    }

}