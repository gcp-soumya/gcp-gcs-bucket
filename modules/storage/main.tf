# modules/gcs-bucket/main.tf

resource "google_storage_bucket" "my_data_bucket" {
  name          = var.bucket_name
  location      = var.location
  project       = var.project_id

  # Enforce Uniform Bucket-Level Access for security best practices
  # This helps avoid 'Error 412: Request violates constraint' if an Org Policy is active
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy = true

  # Optional: enable versioning
  versioning {
    enabled = var.versioning_enabled
  }

  # Optional: lifecycle rules
  lifecycle_rule {
    condition {
      age = var.lifecycle_rule_age
    }
    action {
      type = "Delete"
    }
  }

  # Optional: labels
  labels = var.labels
}
