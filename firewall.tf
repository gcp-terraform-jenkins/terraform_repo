// firewall for ssh
resource "google_compute_firewall" "ssh" {
  project     = var.project_id
  name        = "sunny-firewall-ingress-allow-iap"
  network     = var.vpc_name
  
  description = "allow ssh"
   priority = "1000"
    direction = "INGRESS"
    depends_on = [
      google_compute_instance.vm_instance
    ]
  allow {

    protocol  = "tcp"
    ports     = ["22"]
  }
 
  //source_service_accounts
  source_ranges = ["35.235.240.0/20"]
 // source_tags = ["hai-rule"]
  target_tags = ["testing"]
}
