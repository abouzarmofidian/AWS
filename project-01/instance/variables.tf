###############################
### Web Instance Variables ####
###############################
variable "web_ami" {
  description = ""
  default     = "ami-069aabeee6f53e7bf"
}
variable "instance_type" {
  description = ""
  default     = "t2.micro"
}