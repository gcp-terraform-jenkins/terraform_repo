provider "google" {
    credentials = "${file("permission.json")}"
    project     = var.project_id
    region      = var.reg
    zone        = var.zone
}
