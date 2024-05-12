module "jenkins-sonar-vm" {
  source                 = "./modules/jenkins-sonar-vm"
  VM-AMI                 = var.VM-AMI
  VM-Instance-Type       = var.VM-Instance-Type
  Project-VM-Key         = var.Project-VM-Key
  vpc_security_group_ids = [module.jenkins-sonar-sg.security_group_id]
  subnet_id              = var.subnet_id
  volume_size            = var.volume_size
}

module "jenkins-sonar-sg" {
  source        = "./modules/jenkins-sonar-sg"
  Jenkins-VM-SG = var.Jenkins-VM-SG
}

resource "aws_eip" "Jenkins-VM-IP" {
  instance = module.jenkins-sonar-vm.instance_id
  domain   = "vpc"
}