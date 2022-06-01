resource "google_compute_network" "vpc_network" {
  project                 = "sunny-shadow-350707"
  name                    = "harindra-vpc-res01"
  auto_create_subnetworks = false
  mtu                     = 1460

}
