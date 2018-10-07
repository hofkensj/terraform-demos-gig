provider "jumpscale" {
  server_url = "${var.jumpscale_url}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
}

resource "jumpscale_machine" "machine" {
  cloudspace_id = "${var.cloudspace_id}"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "MyJumpscaleMachine"
  description = "Jumpscale Machine Provisioned With Terraform
  # 3 extra disks attached
  datadisks = [10, 10, 10]
}
