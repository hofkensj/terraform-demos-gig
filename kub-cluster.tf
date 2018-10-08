provider "jumpscale" {
  server_url = "https://be-gen-1.demo.greenitglobe.com/restmachine"
  client_id = "faF2k31kwSMVGXrD1-X246oVlQoD"
  client_secret = "wQkcWueAeLQzR9x2ZyWDiQANg2Ox"
}

# Creating the necessary machines in the primary cloudspace

resource "jumpscale_machine" "Kub_Master_1" {
  cloudspace_id = "389"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "Kubernetes-Master-1"
  description = "Master 1 for Kubernetes Cluster in Cloudspace"
}

resource "jumpscale_machine" "Kub_Master_2" {
  cloudspace_id = "389"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "Kubernetes-Master-2"
  description = "Master 2 for Kubernetes Cluster in Cloudspace"
}

resource "jumpscale_machine" "Kub_Slave_1" {
  cloudspace_id = "389"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "Kubernetes-Slave-1"
  description = "Slave 1 for Kubernetes Cluster in Cloudspace"
}

resource "jumpscale_machine" "Kub_Slave_2" {
  cloudspace_id = "389"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "Kubernetes-Slave-2"
  description = "Slave 2 for Kubernetes Cluster in Cloudspace"
}

# Setting up the appropriate port forwards

resource "jumpscale_port_forwarding" "port_forward_ssh_Kub_Master_1" {
  cloudspace_id = "389"
  public_ip = "195.134.212.11"
  public_port = 2201
  machine_id = "${jumpscale_machine.Kub_Master_1.id}"
  local_port = 22
  protocol = "tcp"
}

resource "jumpscale_port_forwarding" "port_forward_ssh_Kub_Master_2" {
  cloudspace_id = "389"
  public_ip = "195.134.212.11"
  public_port = 2203
  machine_id = "${jumpscale_machine.Kub_Master_2.id}"
  local_port = 22
  protocol = "tcp"
}
