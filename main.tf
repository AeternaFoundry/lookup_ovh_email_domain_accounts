data "ovh_email_domain_accounts" "email_domain_accounts_lookup" {
  for_each = var.email_domain_accounts_lookup

  domain       = each.value.domain
  account_name = each.value.account_name
  description  = each.value.description
}

