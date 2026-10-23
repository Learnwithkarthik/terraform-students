locals {
  # Reusable value used when naming resources.
  name_prefix = "dsu-${var.environment}"

  # Common labels that can be reused across multiple resources.
  common_labels = {
    environment = var.environment
    owner       = var.owner
    managed_by  = "terraform"
    purpose     = "student-demo"
  }
}
