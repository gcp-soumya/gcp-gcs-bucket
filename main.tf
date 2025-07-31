#########################################################
############Storage####################
########################################################

module "my_data_bucket" {
  source = "./modules/storage" # This path points to your module directory

  project_id = var.gcp_project_id
  bucket_name = "${var.gcp_project_id}-my-data" # Ensure bucket name is unique
  location    = "US-CENTRAL1"
  versioning_enabled = true
  lifecycle_rule_age = 30 # Delete objects after 30 days
  labels = {
    environment = "development"
    application = "my-app"
  }
}

# Call your custom GCS Bucket module again for another bucket
module "my_logs_bucket" {
  source = "./modules/storage"

  project_id = var.gcp_project_id
  bucket_name = "${var.gcp_project_id}-my-logs"
  location    = "EUROPE-WEST1"
  uniform_bucket_level_access = true # Example: set to false, though generally not recommended.count.
  labels = {
    environment = "development"
    application = "my-app"
    data_type   = "logs"
  }
}


##################################################