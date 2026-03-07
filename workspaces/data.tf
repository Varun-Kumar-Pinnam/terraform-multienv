 data "aws_ami" "latest_ami" {
 owners      = ["973714476881"] # Specifies the owner is Amazon
 most_recent = true  

filter {
  name = "name"
  values = ["Redhat-9-DevOps-Practice"]
}
  
 }