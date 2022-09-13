terraform {
  backend "local" {
    path = "terraform/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-1"

}