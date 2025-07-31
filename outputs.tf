
###########################
#storage

output "data_bucket_name" {
  description = "The name of the data bucket."
  value       = module.my_data_bucket.bucket_name
}

output "logs_bucket_url" {
  description = "The URL of the logs bucket."
  value       = module.my_logs_bucket.bucket_url
}

#############################