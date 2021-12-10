# devops-course-task6c-terraform

This repository contains a Terraform module designed to create a compute instance, type: e2-micro, with the Debian 9 OS and NGINX Web Server installed.

## Using .gitignore file
The `.gitignore` file has been moved to the root directory of the repository and slightly modified. Please [review it](../.gitignore).

## Conventional module structure

It is strongly recommended splitting the code logically into the following files:

`main.tf` - create all resources
`provider.tf` - contains Provider's configuration. It's not changed as much as other parts of code, so it's better to keep it in a separate file
`variables.tf` - contains declarations of variables used in main.tf
`outputs.tf` - contains outputs from the resources created in main.tf. In out case - it prints our VM's external IP address as the VM gets provisioned.
`terraform.tfvars` - the values of variables are specified here. They are usually project-specific, so it's better to add it to .gitignore. You should try keeping Terraform code as generic as possible, so it can be easily re-used by other people.
`terraform.tfvars.example` - this one contains some examples on how to specify the variables, some comments, etc. Keep it in the repo, so everyone can use it as an example
firewall.tf can be used to separate firewall settings

## Avoiding hard-coded parameters
All the input parameters, used by resources, providers and outputs, should come from:

* variables
```
variable "vm_name" {
  type = string
  description = "VM name"
  default = "nginxserver"
}
```

* other resources:
```
output "nginx_external_ip" {
  value = google_compute_instance.nginx_test.network_interface[0].access_config[0].nat_ip
}
```