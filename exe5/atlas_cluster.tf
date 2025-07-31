resource "mongodbatlas_cluster" "cluster" {
  project_id                   = var.project_id
  name                         = var.cluster_name
  mongo_db_major_version       = var.mongodbversion
  cluster_type                 = "REPLICASET"
  replication_specs {
	num_shards           = 1
	regions_config {
  	region_name          = var.region
  	electable_nodes      = 3
  	priority             = 7
  	read_only_nodes      = 0
	}
     regions_config {
  	region_name          = var.region2
  	electable_nodes      = 2
  	priority             = 6
  	read_only_nodes      = 0
	}
  }
  cloud_backup                  = true
  pit_enabled                   = true
  provider_name                 = var.cloud_provider
  provider_instance_size_name   = "M10"
}

