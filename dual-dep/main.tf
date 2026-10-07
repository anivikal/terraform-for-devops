resource "null_resource" "c" {}

resource "null_resource" "d" {}

resource "null_resource" "a" {
  depends_on = [
    null_resource.c,
    null_resource.d
  ]
}
