terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

data "template_file" "bootstrap" {
	# This is probably an abuse of the template_file for the moment.
	template = "git clone https://github.com/reed9999/build-various-things.git ~/scripts"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0103f211a154d64a6"  # us-east-2
  instance_type = "m4.large"

  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

	user_data = "${data.template_file.bootstrap.rendered}"
  tags = {
    Name = "ohio-019"

  }
}




