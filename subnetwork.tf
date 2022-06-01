resource "google_compute_subnetwork" "subnetwork" {
 name          = "terraform-subnetwork"
 network       = "terraform-vpc"
 ip_cidr_range = "10.42.0.0/24" 
 depends_on = [
   google_compute_network.vpc_network
 ]
}
