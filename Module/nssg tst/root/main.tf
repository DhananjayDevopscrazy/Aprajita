module "nsg_module" {
  source = "../childnsgmodule"
  rgg    = var.dev_rgg
  nsgg   = var.dev_nsgg
  nsggs = var.dev_nsggs
}