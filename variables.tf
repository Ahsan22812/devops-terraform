variable "VM-AMI" {
  type        = string
  description = "Machine image in vm for jenkins and sonarqube which will be created in the default VPC"
}
variable "VM-Instance-Type" {
  type        = string
  description = "virtual machine for jenkins and sonarqube which will be created in the default VPC"
}

variable "Project-VM-Key" {
  type        = string
  description = "Key pair for jenkins and sonarqube vm which will be created in the default VPC"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of default vpc  for virtual machine for jenkins and sonarqube"
}

variable "volume_size" {
  type        = number
  description = "EBS storage for jenkins and sonarqube vm"
}

variable "Jenkins-VM-SG" {
  type        = string
  description = "virtual machine for jenkins and sonarqubewhich will be created in the default VPC"
}
