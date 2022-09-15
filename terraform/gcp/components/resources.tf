# Add a virtual machine in Canada
module "my-ca-vm" {
  source           = "./gce_instance"
  instance_name    = "my-canada-vm"
  instance_zone    = "northamerica-northeast1-a"
  instance_network = google_compute_network.my-vpc.name
}
# Add a virtual machine in the USA
module "mynet-us-vm" {
  source           = "./gce_instance"
  instance_name    = "my-usa-vm"
  instance_zone    = "us-central1-a"
  instance_network = google_compute_network.my-vpc.name
}
