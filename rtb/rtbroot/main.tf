module "route_table" {
  source      = "../rtbchild"
  rgroup      = var.root_rgroup
  routtable   = var.root_routtable
  # subnetblock = var.root_subnetblock


}

