resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  tags = [var.tag_name]
  boot_disk {
    initialize_params {
      image = var.image_os
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



