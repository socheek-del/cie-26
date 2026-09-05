data "vault_auth_backends" "vault-dev-server1" {
  provider = vault.vrd1
}

data "vault_auth_backends" "vault-dev-server2" {
  provider = vault.vrd2
}