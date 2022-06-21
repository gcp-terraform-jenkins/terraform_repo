variable "project_id" {
  type = string
  default = "jenkins-353310"
} 
variable "reg" {
  type = string
  default = "us-east1"
}
variable "zone" {
  type = string
  default = "us-east1-b"
}
variable "subnetwork" {
  type = string
  default = "test-subnetwork_1"
}
variable "vpc_name" {
  type = string
  default = "test-vpc_1"
}
variable "vm_name" {
  type = string
  default = "my-vm-1"
}
variable "machine_type" {
  type = string
  default = "f1-micro"
}
variable "image_os" {
  type = string
  default = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
}
variable "tag_name" {
  type = string
  default = "test_1"
}
variable "cidr" {
  type = string
  default = "10.42.0.0/16"
}
