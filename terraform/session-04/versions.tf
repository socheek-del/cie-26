terraform {
  cloud {
    organization = "banana-orange-pineapple"
    hostname = "app.terraform.io"

    workspaces {
      name = "random-string-ws"
    }
  }
}