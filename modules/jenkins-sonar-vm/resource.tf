resource "aws_instance" "web" {
  ami                         = var.VM-AMI
  instance_type               = var.VM-Instance-Type
  key_name                    = var.Project-VM-Key
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  associate_public_ip_address = "true"
  user_data                   = templatefile("./install.sh", {})

  tags = {
    Name = "Jenkins-SonarQube"
  }
  root_block_device {
    volume_size = var.volume_size
  }
}

output "instance_id" {
  value = aws_instance.web.id
}
