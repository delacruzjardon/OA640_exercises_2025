resource "mongodbatlas_custom_db_role" "no_deletions" {
  project_id = var.project_id
  role_name  = "no_deletions"

  actions {
	action = "UPDATE"
	resources {
  	collection_name = ""
  	database_name   = "test"
	}
  }
  actions {
	action = "INSERT"
	resources {
  	collection_name = ""
  	database_name   = "test"
	}
  }
  actions {
	action = "REMOVE"
	resources {
  	collection_name = ""
  	database_name   = "test"
	}
  }

actions {
    	action = "FIND"
    	resources {
    	collection_name = ""
    	database_name   = "test"
    	}
  }

}
