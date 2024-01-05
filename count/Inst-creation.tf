resource "aws_instance" "web" {
  count = 11
  ami           = var.AMI_ID
  instance_type = var.Instance_name[count.index] == "mongodb" || var.Instance_name[count.index] == "shipping" || var.Instance_name[count.index] == "mysql" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids = [aws_security_group.allow_sg.id]

  tags = {
    Name = var.Instance_name[count.index]
  }
}

resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.Instance_name[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = var.Instance_name[count.index] == "web" ? [aws_instance.web[count.index].public_ip] : [aws_instance.web[count.index].private_ip]
}

