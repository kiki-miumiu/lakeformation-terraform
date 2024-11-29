resource "aws_lakeformation_lf_tag" "default" {
  for_each = var.lakeformation_tags

  key    = each.key
  values = each.value

  catalog_id = data.aws_caller_identity.current.account_id
}