variable "hcloud_token" {
    type    = string
    default = env("HCLOUD_TOKEN")
}

variable "talos_version" {
  type    = string
  default = "v1.7.6"
}

variable "arch" {
  type    = string
  default = "amd64"
}

variable "server_type" {
  type    = string
  default = "cx11"
}

variable "server_location" {
  type    = string
  default = "hel1"
}

locals {  
  image = "https://factory.talos.dev/image/ce4c980550dd2ab1b17bbf2b08801c7eb59418eafe8f279833297925d67c7515/${var.talos_version}/hcloud-${var.arch}.raw.xz"
  #image = "https://factory.talos.dev/image/376567988ad370138ad8b2698212367b8edcb69b5fd68c80be1f2ec7d603b4ba/${var.talos_version}/hcloud-${var.arch}.raw.xz"
}

