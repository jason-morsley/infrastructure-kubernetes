#   __      __        _       _     _           
#   \ \    / /       (_)     | |   | |          
#    \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#     \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#      \  / (_| | |  | | (_| | |_) | |  __/\__ \
#       \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/
#                                             

variable "region" {
  default = "eu-west-2" # London
}

variable "access_key" {}

variable "secret_key" {}

variable "key_name" {
  default = "jasonmorsley-dev-rancher-k8s"
}

variable "keys_bucket" {
  default = "jasonmorsley-dev-rancher"
}

variable "kube_config_filename" {
  default = "jasonmorsley-dev-kube-config.yaml"
}

variable "instance_type" {
  default = "t2.xlarge"
}

variable "cluster_name" {
  default = "jasonmorsley-dev"
}

# ToDo --> use throughout
variable "hostname" {
  default = "rancher.jasonmorsley.dev"
}

variable "domain_name" {
  default = "jasonmorsley.dev"
}