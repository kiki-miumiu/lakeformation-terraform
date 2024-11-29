variable "logical_env" {
  description = "Logical environment"
  type        = string
}

variable "lob_deploy" {
  description = "Flag to deploy lob"
  type        = bool
}

variable "lakeformation_domain_tag" {
  description = "A list of lake formation domain tag"
  type        = list(string)
  default     = []
}

locals {
  lakeformation_tags = {
    environment = ["dev", "test", "stg", "nft", "preprod", "prod"]
    domain         = var.lakeformation_domain_tag
    classification = ["NC", "HIP", "CUS", "CNF", "GRP", "PUB"]
    temp           = ["true", "false"]
    assettype      = ["dataasset", "dataproduct"]
  }
}