provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "g-terra-state"
    key    = "terraform/pipeline_state"
    region = "eu-west-2"
  }
}
