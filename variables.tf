variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"

    validation {
    condition     = contains(["t3.micro", "t3.small"], var.instance_type)
    error_message = "The instance_type must be either 't3.micro' or 't3.small'."
  }
}

variable "sg_ids" {
    type = list
    description = list of security group id to be passed
}

variable "tags_Name" {
    type = map
}