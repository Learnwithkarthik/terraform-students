output "bucket_name" {
  description = "Name of the created GCS bucket."
  value       = google_storage_bucket.student_bucket.name
}

output "bucket_url" {
  description = "GCS URL of the created bucket."
  value       = google_storage_bucket.student_bucket.url
}

output "vm_name" {
  description = "Name of the created Compute Engine VM."
  value       = google_compute_instance.student_vm.name
}

output "vm_internal_ip" {
  description = "Internal IP address of the VM."
  value       = google_compute_instance.student_vm.network_interface[0].network_ip
}

output "vm_external_ip" {
  description = "External IP address of the VM."
  value       = google_compute_instance.student_vm.network_interface[0].access_config[0].nat_ip
}
