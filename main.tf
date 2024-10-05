provider "google" {
  credentials = file("<path_to_your_service_account_key>.json")
  project     = "<your_project_id>"
  region      = "us-central1"  # You can change this to your preferred region
}

resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "n1-standard-1"  # Change the machine type as needed
  zone         = "us-central1-a"  # Adjust the zone based on your region

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # You can change the image as needed
    }
  }
