provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "default" {
  name     = var.bucket_name
  location = var.region
  #  uniform_access = true
}
