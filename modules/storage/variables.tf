# modules/gcs-bucket/variables.tf

variable "project_id" {
  description = "The GCP project ID where the bucket will be created."
  type        = string
}

variable "bucket_name" {
  description = "The globally unique name of the GCS bucket."
  type        = string
}

variable "location" {
  description = "The GCS bucket location (e.g., US, EUROPE, ASIA-EAST1)."
  type        = string
  default     = "US"
}

variable "uniform_bucket_level_access" {
  description = "Enables uniform bucket-level access for the bucket."
  type        = bool
  default     = true
}

variable "versioning_enabled" {
  description = "Whether to enable object versioning for the bucket."
  type        = bool
  default     = false
}

variable "lifecycle_rule_age" {
  description = "Number of days after which objects should be deleted (0 to disable)."
  type        = number
  default     = 0 # No lifecycle rule by default
}

variable "labels" {
  description = "A map of key/value labels to assign to the bucket."
  type        = map(string)
  default     = {}
}
