//configure the Google Cloud Provider
provider "google" {
  credentials = file("IAAC-96d39da1543f.json")
  project = "{{iaac-237416}}"
  region  = "europe-west6"
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