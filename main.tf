resource "null_resource" "cool_resource" {
    triggers = {
        "test_var" = var.cool_variable
    }
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fkpi-org"

    workspaces {
      name = "cool-workspace"
    }
  }
}

variable "cool_variable" {
    type = string
    description = "very cool string."
    default = "rad"
  
}
