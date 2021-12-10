resource "google_compute_firewall" "http-server" {
    project = var.project_id
    name    = var.fw_allow_rule["name"]
    network = var.vm_network

    allow {
        protocol = var.fw_allow_rule["protocol"]
        ports    = var.fw_allow_rule["ports"]
    }
    source_ranges = var.fw_allow_rule["source_ranges"]
    target_tags   = var.tags
}