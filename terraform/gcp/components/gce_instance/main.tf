resource "google_compute_instance" "gce_instance" {
  name         = var.instance_name
  zone         = var.instance_zone
  machine_type = var.instance_type
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  # Allocate a one-to-one NAT IP to the instance
  # TODO - consider IPv6 as well
  network_interface {
    network = var.instance_vpc
    access_config {
    }
  }
}
