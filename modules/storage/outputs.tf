# modules/gcs-bucket/outputs.tf

output "bucket_name" {
  description = "The name of the created GCS bucket."
  value       = google_storage_bucket.my_data_bucket.name
}

output "bucket_url" {
  description = "The URL of the created GCS bucket."
  value       = google_storage_bucket.my_data_bucket.self_link
}

output "bucket_id" {
  description = "The ID of the created GCS bucket."
  value       = google_storage_bucket.my_data_bucket.id
}
