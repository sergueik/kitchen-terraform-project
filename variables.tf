variable "region" {
}

variable "project_id" {}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-default-bucket-name"  # Optional
}