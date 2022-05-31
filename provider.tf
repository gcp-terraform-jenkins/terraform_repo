provider "google" {
    credentials = "${file("permission.json")}"
    project     = "terraform-harindra-res01"
    region      = "us-east1"
    zone        = "us-east1-b" 
}
