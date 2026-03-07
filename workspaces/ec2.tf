resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = lookup(local.instance_type, local.environment)
  vpc_security_group_ids = [aws_security_group.create_SG.id]

  tags = {
    Name = "terraform"
    Project = "Roboshop"
  }

}

resource "aws_security_group" "create_SG" {
  name        = "terraform_allow_tls"
  description = "Allow traffic"
 
  tags = {
    Name = "terraform_allow_tls"
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
