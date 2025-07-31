resource "mongodbatlas_cloud_backup_snapshot_restore_job" "production" {
  count   	 = (var.point_in_time_utc_seconds == 0 ? 0 : 1)
  project_id   = var.project_id
  cluster_name = var.cluster_name

  delivery_type_config {
    point_in_time    		 = true
    target_cluster_name  	 = mongodbatlas_cluster.cluster.name
    target_project_id		 = mongodbatlas_cluster.cluster.project_id
    point_in_time_utc_seconds = var.point_in_time_utc_seconds
  }
}
