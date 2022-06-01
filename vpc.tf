resource "google_compute_network" "vpc_network" {
  project                 = "sunny-shadow-350707"
  name                    = "terraform-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460

}
