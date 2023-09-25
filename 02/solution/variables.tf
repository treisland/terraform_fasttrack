variable "terraform_version" {
  type = string
  default = ">=1.5.0"
}

variable "aws_version" {
  type = string
  default = "~> 5.17"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "profile" {
  type = string
  default = "default"
}