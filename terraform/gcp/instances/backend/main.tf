module "default" {
  source = "../../../module/gcp/vpc"

  project     = "studidevops"
  region      = "asia-southeast2"
  zone        = "asia-southeast2-a"
  credentials = "<path to your credential json>"

  name         = "backend"
  machine_type = "e2-micro"
  network      = "batch8"
  subnetwork   = "projects/studidevops/regions/asia-southeast2/subnetworks/batch8"
  public_ip    = false
}
