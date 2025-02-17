module "log_ana" {
  source   = "../child"
  rg       = var.r_rg
  law_name = var.r_law_name
}