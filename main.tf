terraform {
  backend "gcs" {
    bucket  = "statefilebucket01"
    prefix  = "terraform/dev/state"
  }
}
resource "google_storage_bucket" "bucket" {
  count =1
  name  = "dragonf-dev"
  project = "poc2-dev"
  location = "US"
  storage_class = "STANDARD"
}