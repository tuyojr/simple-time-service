variable "tags" {
  description = "A map of tags to apply to resources."
  type        = map(string)
  default = {
    Org       = "Particle41"
    ManagedBy = "terraform"
  }
}

variable "bucket_name" {
  description = "Bucket name for terraform backend"
  type        = string
  default     = "terraform-state"
}

variable "lock_table_name" {
  description = "Name for the dynamodb table"
  type        = string
  default     = "terraform-state-lock"
}