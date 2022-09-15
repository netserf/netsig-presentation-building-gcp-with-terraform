# Add a VPC network resource to the project
resource "google_compute_network" "my-vpc" {
  name                    = "my-vpc"
  auto_create_subnetworks = "true"
}

# Add firewall rules to allow HTTP, SSH, and ICMP traffic on my-vpc network
resource "google_compute_firewall" "my-vpc-allow-http-ssh-icmp" {
  name          = "my-vpc-allow-http-ssh-icmp"
  network       = google_compute_network.my-vpc.name
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
  allow {
    protocol = "icmp"
  }
}
