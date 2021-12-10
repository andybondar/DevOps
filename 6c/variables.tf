variable "project_id" {
  type = string
  description = "Project ID"
}

variable "credentials_file" {
  type = string
  description = "Path to the file containg GCP credentials. DO NOT STORE IT IN THE REPOSITORY!!!"
}

variable "vm_name" {
  type = string
  description = "VM name"
  default = "nginxserver"
}

variable "vm_type" {
  type = string
  description = "VM type"
  default = "e2-micro"
}

variable "zone" {
  type = string
  description = "GCP zone"
  default = "us-central1-c"
}

variable "tags" {
  type = list
  description = "VM network tags"
  default = ["http-server"]
}

variable "vm_image" {
  type = string
  description = "VM image"
  default = "debian-cloud/debian-9"
}

variable "vm_bootstrap_script" {
  type = string
  description = "VM Bootstrap Script"
  default = "nginx.sh"
}

variable "vm_preemptible" {
  type = bool
  description = "Is VM preemptible?"
  default = true
}

variable "vm_automatic_restart" {
  type = bool
  description = "Is VM automatic restart enabled?"
  default = false
}

variable "vm_network" {
  type = string
  description = "VM network"
  default = "default"
}

variable "fw_allow_rule" {
  type = any
  description = "Firewall Rule to allow ingress traffic"
  default = {
    name = "default-allow-http"
    protocol = "tcp"
    ports = ["80"]
    source_ranges = ["0.0.0.0/0"]
  }
}