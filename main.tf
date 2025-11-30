terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = "sinuous-axiom-479715-g7"
  region  = "us-central1"
}



resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-githubdemo-bucket01"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}