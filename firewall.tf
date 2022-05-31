// firewall for ssh
resource "google_compute_firewall" "ssh" {
  project     = "terraform-harindra-res01"
  name        = "harindra-firewall-ingress-allow-iap"
  network     = "harindra-vpc-res01"
  
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

/*
// "ICMP"
resource "google_compute_firewall" "icmp" {
  project     = "terraform-harindra-res01"
  name        = "harindra-firewall-ingress-allow-icmp"
  network     = "harindra-vpc-res01"
  
  description = "allow icmp"
   priority = "1000"
    direction = "INGRESS"
    depends_on = [
      google_compute_instance.vm_instance
    ]
  allow {

    protocol  = "icmp"
  }
  target_tags = ["testing"]
}

// rdp
resource "google_compute_firewall" "rdp" {
  project     = "terraform-harindra-res01"
  name        = "harindra-firewall-ingress-allow-rdp"
  network     = "harindra-vpc-res01"
  
  description = "allow rdp"
   priority = "1000"
    direction = "INGRESS"
    depends_on = [
      google_compute_instance.vm_instance
    ]
  allow {

    protocol  = "tcp"
    ports     =  "3389"
  }
  target_tags = ["testing"]
} */

 // internet ip
resource "google_compute_firewall" "internetip" {
  project     = "terraform-harindra-res01"
  name        = "harindra-firewall-ingress-internetip"
  network     = "harindra-vpc-res01"
  
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
  source_ranges = [ "103.165.15.236/32" ]
  target_tags = ["testing"]
}
// firewall for elb-healthchecks 
/*resource "google_compute_firewall" "elb-healthchecks" {
  project     = "terraform-harindra-res01"
  name        = "harindra-firewall-ingress-allow-elb-healthchecks"
  network     = "harindra-vpc-res01"
  
  description = "allow health-checks"
   priority = "1000"
    direction = "INGRESS"
    depends_on = [
      google_compute_instance.vm_instance
    ]
  allow {

    protocol  = "tcp"
    ports     = ["80", "8080","9090","3000"]
  }
   source_ranges = [ "130.211.0.0/22","35.191.0.0/16"]
   target_tags = ["harindra-instance"]
}*/