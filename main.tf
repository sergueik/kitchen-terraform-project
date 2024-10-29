provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "default" {
  name           = "${var.project_id}-bucket"
  location       = var.region
  uniform_access = true
}
