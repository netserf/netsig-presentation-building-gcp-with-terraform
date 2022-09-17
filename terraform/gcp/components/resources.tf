# Add a virtual machine in Eastern USA
module "my-us-east-vm" {
  source        = "./gce_instance"
  instance_name = "my-columbus-vm"
  instance_zone = "us-east5-b"
  instance_vpc  = google_compute_network.my-vpc.name
}
# Add a virtual machine in Western USA
module "mynet-us-west-vm" {
  source        = "./gce_instance"
  instance_name = "my-oregon-vm"
  instance_zone = "us-west1-a"
  instance_vpc  = google_compute_network.my-vpc.name
}
# Add a virtual machine in Europe
module "my-eu-vm" {
  source        = "./gce_instance"
  instance_name = "my-belgium-vm"
  instance_zone = "europe-west1-b"
  instance_vpc  = google_compute_network.my-vpc.name
}
