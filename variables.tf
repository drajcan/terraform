# --- root/variables.tf ---

variable "owner" {
  description = "Specify owner of project"
  type        = string
}

variable "project" {
  description = "Specify project"
  type        = string
  default     = "tf"
}

variable "aws_region" {
  description = "Specify AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "aws_profile" {
  description = "Specify AWS profile"
  type        = string
  default     = "nka_dev"
}
