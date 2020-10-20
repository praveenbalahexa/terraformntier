variable private_region {
    type    = string
    default = "us-east-1"
    description ="private region name"
}
#
variable private_network_cidr{
    type    =   string
    default =   "10.10.0.0/16"
    description ="private network ip"
}

variable private_subnets{
    type    =   list(string)
    default =   ["web","app","db","mgmt"]
    description ="subnet names"
}