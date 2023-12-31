terraform {
  source = "../../../..//module/gcp/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  tags         = ["backend-server"]
  network      = "default"
  subnetwork   = "default"
  public_ip    = true
}
