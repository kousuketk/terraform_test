terraform {
  required_version = "1.1.0"
  backend "s3" {
    bucket = "terraform-test-tfstate-1209"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
