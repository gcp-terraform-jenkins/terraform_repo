resource "google_compute_network" "vpc_network" {
  project                 = "terraform-harindra-res01"
  name                    = "harindra-vpc-res01"
  auto_create_subnetworks = false
  mtu                     = 1460

}
