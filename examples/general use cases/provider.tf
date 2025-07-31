terraform {
  required_providers {
    google = {
     source = "hashicorp/google"
     version = "5.18.0"
    }
  }
}

provider "google" {
  region = var.region
  project = var.project  
}