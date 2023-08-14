# Most of these vars should change relatively rarely, perhaps when new AMIs come out.
# For rapidly changing vars (e.g. per-execution quantities), declare a default here and
# override in terraform.tfvars, which is not under source control.

# This var could be something like "regional-config" or we can put other kinds of
# config in here as needed.
variable "config" {
  default = {
    USE2 = {
      name     = "us-east-2"
      location = "ohio"
      amis     = {
        #        amazon_linux = "ami-0103f211a154d64a6"
        amazon_linux = "ami-02a89066c48741345"
        ubuntu_arm   = "ami-0b5801d081fa3a76c"
        ubuntu_amd   = "ami-05d251e0fc338590c"
      }
      key_name = "2023-07-build-ohio"
    }
    USE1 = {
      name     = "us-east-1"
      location = "virginia"
      amis     = {
        amazon_linux = "ami-06e46074ae430fba6"
        ubuntu_arm   = "ami-067cf009aedb2612d"
        ubuntu_amd   = "ami-02675d30b814d1daa"
      }
      key_name = "2023-virginia-build"
    }
    AFS1 = {
      name     = "af-south-1"
      location = "cape-town"
      amis     = {
        ubuntu_amd = "ami-085d7c5ed6c47da72"
      }
      key_name = "2023-07-cape-town-build"
    }
    SAE1 = {
      name     = "sa-east-1"
      location = "sao-paulo"
      amis     = {
        ubuntu_amd = "ami-050eeeeea5805d75b"
      }
      key_name = "2023-sao-paulo-build"
    }
  }

}

variable "USE1" {

  default = {
    name     = "us-east-1"
    location = "virginia"
    amis     = {
      amazon_linux = "ami-06e46074ae430fba6"
      ubuntu       = "ami-09b435c65f97ace2e"
    }
    key_name = "2023-virginia-build"
  }
}

# Reminder -- these are overridden in terraform.tfvars. This is intended simply as a default.
variable "quantities" {
  default = {
    USE2 = {
      nano      = { amazon = 0, ubuntu = 0 },
      micro     = { amazon = 0, ubuntu = 0 },
      large     = { amazon = 0, ubuntu = 0 },
      # To experiment, let's also work in a compute-optimized instance type
      c6a-large = { amazon = 0, ubuntu = 0 }
    }
    USE1 = {
      micro = { amazon = 0, ubuntu = 0 },
      large = { amazon = 0, ubuntu = 0 },
    }
    # not yet in effect
    APNE3 = {
      micro = { amazon = 0, ubuntu = 0 },
      large = { amazon = 0, ubuntu = 0 },
    }
    # not yet in effect
    SAE1 = {
      micro = { amazon = 0, ubuntu = 0 },
      large = { amazon = 0, ubuntu = 0 },
    }
    AFS1 = {
      micro = { amazon = 0, ubuntu = 0 },
      large = { amazon = 0, ubuntu = 0 },
    }
  }
}

variable "instance_types" {
  default = {
    micro     = "t2.micro"  # Not available in Cape Town
    t3-micro  = "t3.micro"
    large     = "m5.large"
    c6a-large = "c6a.large"
  }
}

# For archival purposes only

# Used from Q1 or 2 2023 until 2023-07
# old_ubuntu       = "ami-0f12014c8b2f26d33"  
