variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello terraform"
        Project = "roboshop"
        Environment = "Dev"
        Component = "Web"
        Terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "roboshop-all"
}

variable "sg-description" {
    type = string
    default = "allow all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}