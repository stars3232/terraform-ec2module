resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_id
  vpc_security_group_ids = var.security_group_id

  tags = var.tags
}

