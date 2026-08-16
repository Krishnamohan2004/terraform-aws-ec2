variable "AWS_ACCESS_KEY_ID" {
  description = "AWS access key ID for Terraform Cloud"
  type        = string
  default     = null
  nullable    = true
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS secret access key for Terraform Cloud"
  type        = string
  default     = null
  nullable    = true
  sensitive   = true
}

variable "AWS_DEFAULT_REGION" {
  description = "AWS region for Terraform Cloud"
  type        = string
  default     = "ap-south-1"
}
