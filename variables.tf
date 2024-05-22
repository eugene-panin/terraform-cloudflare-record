variable "cloudflare_api_token" {
  type        = string
  description = "API Token for Cloudflare account"
}

variable "full_domain_name" {
  type        = string
  description = "The domain name to be used in Cloudflare"
}

variable "target_address" {
  type        = list(string)
  description = "Public IP address of the server or load balancer"
}

variable "proxied" {
  type        = bool
  description = "Whether the record is proxied by Cloudflare"
  default     = false
}
