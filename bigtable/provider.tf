terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.79.0"
    }
  }
}
provider "google" {
  # Configuration options
  credentials = file(json.key)
  project     = "var.project"
  region      = "var.region"
}


