terraform {
  backend "gcs" {
    bucket  = "devops-cloud-platform-tfstate"
    prefix  = "dev/terraform"
  }
}