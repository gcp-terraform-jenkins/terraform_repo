resource "google_compute_instance" "vm_instance" {
  name         = "harindra"
  machine_type = "f1-micro"
  tags = [ "testing" ]
  boot_disk {
    initialize_params {
      image = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
    }
  }
}



