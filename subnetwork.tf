// Create Subnet
resource "google_compute_subnetwork" "subnetwork" {
 name          = "harindra-subnetwork-res01"
 network       = "harindra-vpc-res01"
 ip_cidr_range = "10.9.8.0/24" 
 depends_on = [
   google_compute_network.vpc_network
 ]
}