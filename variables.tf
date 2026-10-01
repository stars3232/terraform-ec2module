variable "ami_id" {
    type    = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type    = string
    default = "t2.micro"

    validation {
        condition      = contains(["t2.micro","t3.small"],var.instance_type)
        error_message  = "Please choose instance_type btw t2.micro or t3.micro"
    }

}


variable "security_group_id" {
    type    = list

}

variable "tags"  {
    type    = map

}