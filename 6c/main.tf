resource "google_compute_instance" "nginx_test" {
    project = var.project_id
    name = var.vm_name
    machine_type = var.vm_type
    zone = var.zone
    tags = var.tags

    boot_disk {
        initialize_params {
            image = var.vm_image
        }
    }

    metadata_startup_script = file(var.vm_bootstrap_script)

	scheduling {
        preemptible = var.vm_preemptible
        automatic_restart = var.vm_automatic_restart
    }

    network_interface {
        network = var.vm_network
        access_config {
        }
    }
}