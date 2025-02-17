# variable "root_subnetblock" {
#   description = "This is Subnet data details"
#   type        = map(any)

# }


variable "root_rgroup" {
  description = "This is Resource Group Block"
  type = map(object({
    name     = string
    location = string

  }))

}
variable "root_routtable" {
  description = "value"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    routs = list(object({
      name           = string
      address_prefix = string
      next_hop_type  = string

    }))
  }))
}

