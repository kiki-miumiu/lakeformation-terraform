module "lob_logical_onboarding" {
  # condition [lob_deploy: true ...]
  count                       = (var.lob_deploy == true && var.logical_env != "") ? 1 : 0
  source                      = "./modules/lob_logical_onboarding"
#   lz                          = var.lz
#   lob                         = var.lob
#   platform                    = var.platform
#   capability                  = var.capability
#   service                     = var.service
#   logical_env                 = var.logical_env
#   crew                        = var.crew
#   env                         = var.env
#   domain                      = var.domain
  lakeformation_tags          = local.lakeformation_tags
#   identitycenter_instance_arn = var.identitycenter_instance_arn
#   aws_region                  = var.aws_region
#   awsaccount_id               = local.awsaccount_id
}