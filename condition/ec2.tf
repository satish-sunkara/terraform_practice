resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids = [aws_security_group.allow_sg.id]

}