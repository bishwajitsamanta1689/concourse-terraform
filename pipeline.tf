provider "google" {
  credentials = "${file("ci-cd-pipeline-269615-4f66a8568f70.json")}"
  project = "ci-cd pipeline"
  region = "us-central1"
}