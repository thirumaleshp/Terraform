
provider "google" {
  project = "mygcptestproject-437406"
  region  = "us-central1"
}

resource "google_compute_instance" "my_vm" {
  name         = "my-tfvm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-noble-arm64-v20241115"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // One access config is required for external IP
    }
  }
}
