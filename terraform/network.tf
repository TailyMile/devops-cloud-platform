resource "google_compute_network" "vpc" {
  name                    = "devops-vpc"
  auto_create_subnetworks = true
}
resource "google_compute_firewall" "http" {
  name    = "allow-http-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}