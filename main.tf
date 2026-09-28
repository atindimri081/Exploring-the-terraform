terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~>2.1"

    }
  }
}

variable "user_name" {
  type    = string
  default = "Engineer"
}
resource "local_file" "welcome_note" {
  filename = "${path.module}/welcome.txt"
  content  = "Welcome To Terraform, ${var.user_name}!"
}

output "file_location" {
  value = local_file.welcome_note.filename
}