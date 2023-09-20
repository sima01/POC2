terraform {
  backend "gcs" {
    bucket  = "statefilebucket01"
    prefix  = "terraform/dev/state"
  }
}
resource "google_storage_bucket" "bucket" {
  count =1
  name  = "dragonflyo1"
  project = "dragonfly2"
  location = "US"
  storage_class = "STANDARD"
}
