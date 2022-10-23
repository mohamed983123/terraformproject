terraform {
  backend "s3" {
    bucket = "morshedbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}