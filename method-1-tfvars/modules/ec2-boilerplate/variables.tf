# The instance size may be different from env to env. For example, in the dev environment we may want to save some money by making the instances a cheaper class or smaller size (though the preference would be cheaper class and same base resource allocation). One case would be m5 instances in prod and t3 instances in dev.
variable "instance_type" {
  type = string
  description = "The class and size of EC2 instance that we want to deploy. Ex: 't2.medium'."
  default = "t2.medium"
}

variable "key_name" {
  type = string
  description = "Key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource."
  default = "ipfs-keypair-name"
}

variable "storage_size" {
  type = number
  description = "The size in gigabytes we want to allot for the volume."
  default = 100
}

variable "instance_name" {
  type = string
  description = "The name of the instance, mostly used for differentiating within the console."
}

variable "subnet" {
  type = string
  description = "The subnet to put the instance inside."
}

variable "az" {
  type = string
  description = "The availability zone the instance should live in."
  default = "eu-west-1a"
}