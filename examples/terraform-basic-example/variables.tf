variable "region" {
  type        = string
  description = "AWS region"
}

variable "architecture" {
  type        = string
  description = "Lambda runtime architecture"
  default     = "x86_64"
}