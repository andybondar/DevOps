variable "aws_region" {
  type = string
}

variable "kpname" {
  type = string
  description = "key pair name"
}

variable "pubkey_path" {
  type = string
  description = "public key path"
}

variable "pkey_path" {
  type = string
  description = "Private key path"
}

variable "ec2_instance_type" {
  type = string
  description = "Type of the EC2 instance"
}

variable "sg_name" {
  type = string
  description = "Name of the new security group"
}