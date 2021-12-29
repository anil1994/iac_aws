variable "AWS_REGION" {    
    default = "eu-central-1"
}
variable "AMI" {
    type = map(string)
    default = {
        eu-central-1 = "ami-05d34d340fb1d89e5"
    }
}
variable "vpc_id" {
  type        = string
}
variable "public_subnet_1" {
  type        = string
}
variable "public_subnet_2" {
  type        = string
}
variable "instance" {
  default  = "nginx"
}
