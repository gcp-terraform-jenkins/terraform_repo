variable "project_id" {
  type = string
  default = "sunny-shadow-350707"
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
  default = "terraform-subnetwork"
}
variable "vpc_name" {
  type = string
  default = "terraform-vpc"
}
variable "vm_name" {
  type = string
  default = "my-vm"
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
  default = "dev_testing"
}
variable "cidr" {
  type = string
  default = "10.42.0.0/24"
}
