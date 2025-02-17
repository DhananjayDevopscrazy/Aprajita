variable "rgg" {
    description = "This is Resource Group block"
    type = map(object({
      name = string
      location = string
    }))
  
}

variable "nsgg" {
        description = "This is Network Security Group block"
    type = map(object({
      name = string
      location = string
      resource_group_name = string
    }))
  
}
variable "nsggs" {
    description = "this is rules"
    type = map(object({
      name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string

    }))
    default = null
  
}