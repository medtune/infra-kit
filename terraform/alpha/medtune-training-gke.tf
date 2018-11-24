provider "google" {
  credentials = "${file("account.json")}"
  project     = "terraform-gke"
  region      = "europe-west1"
}

resource "google_container_cluster" "primary" {
  name                     = "gke-example"
  zone                     = "europe-west1-b"
  remove_default_node_pool = true

  node_pool {
    name = "default-pool"
  }
}

resource "google_container_node_pool" "primary_pool" {
  name       = "primary-pool"
  cluster    = "${google_container_cluster.primary.name}"
  zone       = "europe-west1-b"
  node_count = "4"

  node_config {
    machine_type = "n1-standard-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}