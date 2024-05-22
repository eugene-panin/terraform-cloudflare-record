output "dns_records" {
  value       = { for ip in var.target_address : ip => "${local.name}.${data.cloudflare_zones.selected.zones[0].name}" }
  description = "FQDNs of the created A records"
}
