module "default" {
  source = "../../../module/gcp/vpc"

  project     = "studidevops"
  region      = "asia-southeast2"
  zone        = "asia-southeast2-a"
  credentials = "<path to your credential json>"

  name = "batch8"
  subnet_region = [
    "asia-southeast1",
    "asia-southeast2"
  ]
  subnet_ip_cidr_range = [
    "192.168.0.0/24",
    "192.168.1.0/24"
  ]
}