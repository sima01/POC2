terraform {
  backend "gcs" {
    bucket  = "statefilebucket01"
    prefix  = "terraform/state"
  }
}
resource "google_storage_bucket" "buckett" {
  count =1
  name  = "dragonflyo1"
  location = "US"
  storage_class = "STANDARD"
}
