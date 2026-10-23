terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# ------------------------------------------------------------
# GCS BUCKET
# ------------------------------------------------------------
resource "google_storage_bucket" "student_bucket" {
  name          = "${local.name_prefix}-bucket"
  location      = var.bucket_location
  storage_class = var.storage_class

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = true

  labels = local.common_labels
}

# ------------------------------------------------------------
# COMPUTE ENGINE VM
# ------------------------------------------------------------
resource "google_compute_instance" "student_vm" {
  name         = "${local.name_prefix}-vm"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["student-demo", "terraform"]

  boot_disk {
    initialize_params {
      image = var.vm_image
      size  = var.boot_disk_size_gb
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"

    # Gives the VM an external IP for demo purposes.
    # Remove this block if you want a private-only VM.
    access_config {}
  }

  labels = local.common_labels

  metadata = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
