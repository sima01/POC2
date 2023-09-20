terraform {
  backend "gcs" {
    bucket  = "statefilebucket01"
    prefix  = "terraform/prod/state"
  }
}
resource "google_storage_bucket" "bucket" {
  count =1
  name  = "dragonf-prod"
  project = "decent-courage-398120"
  location = "US"
  storage_class = "STANDARD"
}
