dev_rgg = {
  rg = {
    name     = "MyWorkRG"
    location = "Central India"
  },
  rg2 = {
    name     = "dilMyWorkRG"
    location = "Central us"
  }
}

dev_nsgg = {

  nsgname1 = {
    name                = "myprodnsg"
    location            = "central india"
    resource_group_name = "MyWorkRG"


    nsgs = {
      nsgrule1 = {
        name                       = "test123"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      nsgrule2 = {
        name                       = "test1111"
        priority                   = 101
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Udp"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    }
  },
  nsgname3 = {
    name                = "myprodnsg"
    location            = "central us"
    resource_group_name = "dilMyWorkRG"


    nsgs = {
      nsgrule1 = null
    }
  }
}
