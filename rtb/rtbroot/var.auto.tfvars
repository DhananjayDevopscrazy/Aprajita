root_rgroup = {
  rg1 = {
    name     = "mmmyrg1"
    location = "east us"
  },
  rg2 = {
    name     = "yourrg1"
    location = "west us"
  }
}

root_routtable = {
  rtb1 = {
    name                = "mmmyrg1_rtb"
    location            = "east us"
    resource_group_name = "mmmyrg1"

    routs = [
      {
        name           = "lan_ip_allowed"
        address_prefix = "10.0.1.0/24"
        next_hop_type  = "VnetLocal"

      },
      {
        name           = "an_ip_allowed"
        address_prefix = "49.36.144.237/32"
        next_hop_type  = "Internet"

      }
    ]
  },

  rtb2 = {
    name                = "yourrg1_rtb"
    location            = "west us"
    resource_group_name = "yourrg1"

    routs = [
      {
        name           = "lan_ip_allowed"
        address_prefix = "49.36.144.237/32"
        next_hop_type  = "Internet"

      },
      {
        name           = "mylan_ip_notallowed"
        address_prefix = "10.0.4.0/24"
        next_hop_type  = "VirtualNetworkGateway"

      }
    ]
  }
}
# root_subnetblock = {
#   sub_asso1 = {
#     name                = "default"
#     virtual_network_name = "eastrgvnet"
#     resource_group_name  = "eastrg"
#     # index_subnet_id = "sub_asso1"
#   }
#   # sub_asso2 = {
  #   subnet_name               = "default"
  #   virtual_network_name = "westrgvnet "
  #   resource_group_name  = "westrg"
  # }

