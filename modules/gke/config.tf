provider "google" {
  project     = var.project_id
  region      = var.region
}

terraform {
  backend "gcs" {
    bucket  = "pf-tfstate"
    prefix  = "gke/init-cluster"
  }
}
