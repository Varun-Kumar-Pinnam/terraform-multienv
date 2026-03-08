resource "aws_instance" "example" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = var.instance_type

    vpc_security_group_ids = [aws_security_group.create_SG.id]

    tags = {
      Name = "remote-state-tfvars-${var.environment}"
      environment = var.environment
    }
}


resource "aws_security_group" "create_SG" {
  name        = "terraform_allow_tls-${var.environment}"
  description = "Allow traffic"
 
  tags = {
    Name = "terraform_allow_tls-${var.environment}"
  }

    egress {
    from_port        = 0
    to_port          = 0 
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}
