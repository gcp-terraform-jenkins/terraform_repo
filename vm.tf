resource "google_compute_instance" "vm_instance" {
  name         = "harindra"
  machine_type = "f1-micro"
  tags = [ "testing" ]
  boot_disk {
    initialize_params {
      image = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
    }
  }
    labels = {
      pgserver = "true"
    }
 metadata_startup_script = "${file("script.sh")}"
  
  network_interface {
     
      network = google_compute_network.vpc_network.self_link
      subnetwork = google_compute_subnetwork.subnetwork.self_link
    
    access_config {
      //exter_IP
    }
  }
}



