locals {
  domain = split(".", var.full_domain_name)
  name   = element(local.domain, 0)
  zone   = join(".", slice(local.domain, 1, length(local.domain)))
}

provider "cloudflare" {
  api_key = var.cloudflare_api_key
}

data "cloudflare_zones" "selected" {
  filter {
    name = local.zone
  }
}

resource "cloudflare_record" "a_record" {
  for_each = toset(var.target_address)
  zone_id  = data.cloudflare_zones.selected.zones[0].id
  name     = local.name
  value    = each.value
  type     = "A"
  ttl      = 1
  proxied  = var.proxied
}
