remote_state {
  backend = "gcs"
  config = {
    bucket         = "terraform-batch8"
    prefix    = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/abdulrobbyrg/gcp.json"
  }
}

inputs = {
  project = "studidevops"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/abdulrobbyrg/gcp.json"

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-micro"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}