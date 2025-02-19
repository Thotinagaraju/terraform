variable "instance_names" {
  type    = list(any)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "cart", "user", "shipping", "payment", "dispatch", "web"]
}

variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  default = "Z052696030OVI4TQ8ZTML"
}

variable "domaine_name" {
  default = "devopsaws.site"
}