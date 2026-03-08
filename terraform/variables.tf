variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "terraform-gcp-docker-lab"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "europe-west1-b"
}

variable "vm_name" {
  description = "VM name"
  type        = string
  default     = "devops-vm"
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-micro"
}

variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
  default     = "~/.gcp/terraform-key.json"
}