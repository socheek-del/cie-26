output "vault_server1_auth_list" {
  value = data.vault_auth_backends.vault-dev-server1.*
}

output "vault_server2_auth_list" {
  value = data.vault_auth_backends.vault-dev-server2.*
}
