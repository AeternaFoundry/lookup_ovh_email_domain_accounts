output "email_domain_accounts_lookup_account_name" {
  description = "Map of account_name values across all email_domain_accounts_lookup, keyed the same as var.email_domain_accounts_lookup except keys with no account_name are omitted"
  value       = { for k, v in data.ovh_email_domain_accounts.email_domain_accounts_lookup : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "email_domain_accounts_lookup_accounts" {
  description = "Map of accounts values across all email_domain_accounts_lookup, keyed the same as var.email_domain_accounts_lookup except keys with no accounts are omitted"
  value       = { for k, v in data.ovh_email_domain_accounts.email_domain_accounts_lookup : k => v.accounts if v.accounts != null && length(v.accounts) > 0 }
}
output "email_domain_accounts_lookup_description" {
  description = "Map of description values across all email_domain_accounts_lookup, keyed the same as var.email_domain_accounts_lookup except keys with no description are omitted"
  value       = { for k, v in data.ovh_email_domain_accounts.email_domain_accounts_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "email_domain_accounts_lookup_domain" {
  description = "Map of domain values across all email_domain_accounts_lookup, keyed the same as var.email_domain_accounts_lookup except keys with no domain are omitted"
  value       = { for k, v in data.ovh_email_domain_accounts.email_domain_accounts_lookup : k => v.domain if v.domain != null && length(v.domain) > 0 }
}

