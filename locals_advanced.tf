# Changes to these locals are easy to break something. Ensure you know what you are doing (see each comment).

locals {
  # image is region-local. If you changed region, please also change image.
  region = "us-west-2"
  image  = "ami-0b152cfd354c4c7a4" # Ubuntu 20.04

  # If you want to change instance type, ensure that GP3 EBS is available in the instance type.
  tidb_instance    = "c5.4xlarge"
  tikv_instance    = "i3.4xlarge"
  pd_instance      = "c5.2xlarge"
  tiflash_instance = "i3.4xlarge"
  center_instance  = "c5.4xlarge"

  master_ssh_key         = "./master_key"
  master_ssh_public      = "./master_key.pub"
  alternative_ssh_public = "~/.ssh/id_rsa.pub"
}
