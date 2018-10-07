provider "jumpscale" {
  server_url = "https://be-gen-1.demo.greenitglobe.com"
  client_id = "faF2k31kwSMVGXrD1-X246oVlQoD"
  client_secret = "wQkcWueAeLQzR9x2ZyWDiQANg2Ox"
}

resource "jumpscale_machine" "machine" {
  cloudspace_id = "389"
  image_id = 5
  size_id = 1
  disksize = 10
  name = "MyJumpscaleMachine"
  description = "Jumpscale Machine Provisioned With Terraform"
}
