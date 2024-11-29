variable "lakeformation_tags" {
  description = "A map of key-value pairs to be used as Lake Formation tags."
  type        = map(list(string))
  default     = {}
}
