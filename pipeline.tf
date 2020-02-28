provider "google" {
  credentials = "${file("../ci-cd-pipeline-269615-4f66a8568f70.json")}"
  project = "ci-cd pipeline"
  region = "us-central1"
}

resource "google_compute_instance" "concourse" {
  name = "concourse"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
