output "vm_external_ip" {
  description = "External IP of the VM"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "ssh_command" {
  description = "SSH command to connect to the VM"
  value       = "gcloud compute ssh ${google_compute_instance.vm.name} --zone ${google_compute_instance.vm.zone}"
}