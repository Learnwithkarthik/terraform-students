variable "project_id" {
  description = "GCP project ID where the resources will be created."
  type        = string
}

variable "region" {
  description = "Default GCP region."
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "Default GCP zone for the VM."
  type        = string
  default     = "asia-south1-a"
}

variable "environment" {
  description = "Environment name such as dev, test, or prod."
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner/team name used in labels."
  type        = string
  default     = "students"
}

variable "bucket_location" {
  description = "Location of the GCS bucket."
  type        = string
  default     = "ASIA-SOUTH1"
}

variable "storage_class" {
  description = "Storage class for the GCS bucket."
  type        = string
  default     = "STANDARD"
}

variable "machine_type" {
  description = "Compute Engine machine type."
  type        = string
  default     = "e2-micro"
}

variable "vm_image" {
  description = "Boot image used by the VM."
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "boot_disk_size_gb" {
  description = "Boot disk size for the VM in GB."
  type        = number
  default     = 10
}
