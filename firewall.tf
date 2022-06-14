// firewall for ssh
resource "google_compute_firewall" "ssh" {
  project     = var.project_id
  name        = "mahesh-firewall-ingress-allow-iap"
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
 // internet ip
resource "google_compute_firewall" "internetip" {
  project     = var.project_id
  name        = "harindra-firewall-ingress-internetip"
  network     = var.vpc_name
  
  description = "allow internetip"
   priority = "1000"
    direction = "INGRESS"
    depends_on = [
      google_compute_instance.vm_instance
    ]
  allow {

    protocol  = "tcp"
    ports     =  ["8080","9090","3000"]
  }
  source_ranges = [ "117.0.0.0/8","49.0.0.0/8" ]
  target_tags = ["testing"]
}
