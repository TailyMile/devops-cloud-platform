terraform {
  backend "gcs" {
    bucket  = "devops-cloud-platform-tfstate"
    prefix  = "prod/terraform"
  }
}