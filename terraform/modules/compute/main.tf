resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnet_name

    access_config {}
  }

  metadata_startup_script = <<-EOF
  #!/bin/bash

  exec > >(tee /var/log/startup-script.log) 2>&1
  set -x

  echo "===== START BOOTSTRAP ====="

  export DEBIAN_FRONTEND=noninteractive

  echo "Updating packages..."
  apt update -y

  echo "Removing man-db..."
  apt remove -y man-db

  echo "Installing Docker..."
  apt install -y docker.io

  echo "Starting Docker..."
  systemctl enable docker
  systemctl start docker

  echo "Removing old container if exists..."
  docker rm -f nginx-server || true

  echo "Starting nginx container..."
  docker run -d --name nginx-server -p 80:80 --restart unless-stopped nginx

  echo "===== BOOTSTRAP FINISHED ====="

  EOF

}