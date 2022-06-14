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
  default = "harindra-11-vpc-subnetwork"
}
variable "vpc_name" {
  type = string
  default = "harindra-11-test-vpc"
}
variable "vm_name" {
  type = string
  default = "test-vm-11"
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
  default = "test-11"
}
variable "cidr" {
  type = string
  default = "10.42.0.0/16"
}
