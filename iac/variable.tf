variable "USE2" {
  default = {
    name     = "us-east-2"
    location = "ohio"
    amis = {
      amazon_linux = "ami-0103f211a154d64a6"
# Refreshing 2023-07-31: old is now the previous "arm" which gives warnings about daemons.
      old_ubuntu       = "ami-0f12014c8b2f26d33"  
      arm_ubuntu       = "ami-08fdd91d87f63bb09"
  # To use this on my work computer
      ubuntu       = "ami-0fa42adc23c516686"  
    }
    key_name = "2023-07-build-ohio"
  }
}

variable "USE1" {
    
      default = {
    name     = "us-east-1"
    location = "virginia"
    amis = {
      amazon_linux = "ami-06e46074ae430fba6"
      ubuntu       = "ami-09b435c65f97ace2e" 
    }
    key_name = "2023-virginia-build"
  }
}

variable "quantities" {
  default = {
    USE2 = { small = 0, large = 0 }
    USE1 = { small = 0, large = 0 }
    SAE1 = { small = 0, large = 0 }
  }
}

variable "instance_types" {
  default = {
    small = "t2.micro"
    large = "m5.large"
  }
}
