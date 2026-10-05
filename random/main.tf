resource "random_string" "my_str_for_s3" {
  length           = var.string_len
  special          = true
  override_special = "/@$"
}