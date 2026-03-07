locals {
  environment = terraform.workspace
  project = var.project
  ami_id = data.aws_ami.latest_ami.id
  instance_type = {
    dev = "t3.micro"
    prod = "t3.small"
  }
}