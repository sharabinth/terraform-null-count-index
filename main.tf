provider "null" {}

resource "null_resource" "hello" {
  count = "${var.count_number}"

  provisioner "local-exec" {
    command = "echo Count Index is: ${count.index}"
  }
}
