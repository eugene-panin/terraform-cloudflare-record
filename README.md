# terraform-cloudflare-record

Terraform module for records in Cloudflare provider

## Overview

This Terraform module manages DNS A records in Cloudflare for specified IP addresses. It allows for creating multiple A records, optionally proxied by Cloudflare.

## Requirements

- Terraform v0.12 or higher
- Cloudflare provider for Terraform
- A Cloudflare account with API access

## Usage

### Configuring the module

Add the module to your Terraform configurations, set the required variables, and specify the IP addresses for the DNS records.

```hcl
module "cloudflare_dns" {
  source          = "path/to/module"
  domain          = "example.com"
  target_address  = ["192.0.2.1", "198.51.100.1"]
  proxied         = true
  cloudflare_api_token = "your-cloudflare-api-token"
}
```

### Additional Documentation

For more information on the Cloudflare provider for Terraform, refer to the [official Cloudflare provider documentation](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs).

### Contribution

Feel free to fork and submit pull requests or create issues if you have suggestions or need help with the module.
