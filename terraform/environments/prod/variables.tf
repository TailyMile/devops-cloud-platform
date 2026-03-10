variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "environment" {
  type = string
}

variable "network_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}

variable "cluster_name" {
  type = string
}

variable "node_locations" {
  type = list(string)
}

variable "node_count" {
  type = number
}

variable "release_channel" {
  type = string
}

variable "pods_range_name" {
  type = string
}

variable "pods_range_cidr" {
  type = string
}

variable "services_range_name" {
  type = string
}

variable "services_range_cidr" {
  type = string
}