##########################
#    VPC variables       #
##########################
variable "vpc_cidr" {
  description = ""
  default     = "10.0.0.0/16"
}
variable "vpc_name" {
  description = ""
  default     = "myvpc"
}
############################
#internet gateway variables#
############################
variable "gw_name" {
  description = ""
  default     = "My GW"
}
##########################
#   subnet1 variables    #
##########################
variable "subnet1_cidr" {
  description = ""
  default     = "10.10.1.0/24"
}
variable "name_subnet1" {
  description = ""
  default     = "public_subnet1"
}
##########################
#  subnet2 variables     #
##########################
variable "subnet2_cidr" {
  description = ""
  default     = "10.10.2.0/24"
}
variable "name_subnet2" {
  description = ""
  default     = "public_subnet2"
}
##########################
#   subnet3 variables    #
##########################
variable "subnet3_cidr" {
  description = ""
  default     = "10.10.3.0/24"
}
variable "name_subnet3" {
  description = ""
  default     = "private_subnet1"
}
##########################
#    subnet4 variables   #
##########################
variable "subnet4_cidr" {
  description = ""
  default     = "10.10.4.0/24"
}
variable "name_subnet4" {
  description = ""
  default     = "private_subnet2"
}
##########################
# route tables variables #
##########################
variable "route_table_cidr" {
  description = "cidr block for public route table"
  default     = "0.0.0.0/0"
}
##########################
#Security Group variables#
##########################
variable "cidr_open" {
  description = ""
  default     = "0.0.0.0/0"
}