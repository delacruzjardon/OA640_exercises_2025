resource "mongodbatlas_database_user" "user-1" {
  username = "user-1"
  password = random_password.user-1-password.result
  project_id = var.project_id
  auth_database_name = "admin"
  roles {
	role_name 	= "no_deletions"
	database_name = "admin"
  }
  depends_on = [
    	mongodbatlas_custom_db_role.no_deletions
  ]

  scopes {
	name    	= var.cluster_name
	type    	= "CLUSTER"
  }
}

# Create a Database Password
resource "random_password" "user-1-password" {
  length = 16
  special = true
  override_special = "_%@"
}
