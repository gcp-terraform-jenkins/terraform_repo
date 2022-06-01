resource "google_compute_subnetwork" "subnetwork" {
 name          = var.subnetwork
 network       = var.vpc_name
 ip_cidr_range = var.cidr
 depends_on = [
   google_compute_network.vpc_network
 ]
}
