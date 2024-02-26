terraform {
  backend "s3" {
    bucket = "felixbackend"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}