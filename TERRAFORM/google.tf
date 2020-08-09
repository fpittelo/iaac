//configure the Google Cloud Provider
provider "google" {
  project = "{{iaac-237416}}"
  region  = "europe-west6"
  zone    = "europe-west6-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "iaac-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "iaac"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "iaac-network"
  auto_create_subnetworks = "true"
}