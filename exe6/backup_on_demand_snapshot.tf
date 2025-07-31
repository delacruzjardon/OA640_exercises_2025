// On demand snapshot
resource "mongodbatlas_cloud_backup_snapshot" "production" {
  project_id         	   = var.project_id
  cluster_name             = var.cluster_name
 description   	= "My Description"
 retention_in_days = 1
}
