resource "mongodbatlas_cluster_outage_simulation" "outage_simulation" {
  project_id = var.project_id
  cluster_name = var.cluster_name
 	outage_filters {
     	cloud_provider = "AWS"
     	region_name = var.region
 	}
}
