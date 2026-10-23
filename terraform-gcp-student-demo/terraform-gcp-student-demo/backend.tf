
terraform {
  backend "gcs" {
    bucket = "gcs-terraform-sample"
    prefix = "terraform/students/dev"
  }
}
