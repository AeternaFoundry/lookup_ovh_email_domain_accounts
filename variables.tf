variable "email_domain_accounts_lookup" {
  description = <<EOT
Map of email_domain_accounts_lookup, attributes below
Required:
    - domain
Optional:
    - account_name
    - description
EOT

  type = map(object({
    domain       = string
    account_name = optional(string)
    description  = optional(string)
  }))
}

