resource "google_bigtable_instance" "production-instance" {
  name = var.bigtable_instance
  deletion_protection = var.bigtable_instance_deletion_protection

  # A cluster with fixed number of nodes.
  cluster {
    cluster_id   = var.cluster_id
    num_nodes    = var.nodes
    storage_type = var.storage_type
    zone    = var.cluster_zone
    
      
    }
  }


resource "google_bigtable_table" "table" {
  name          = var.bigtablename
  instance_name = google_bigtable_instance.production-instance.name
  split_keys    = ["a", "b", "c"]

  lifecycle {
    prevent_destroy = var.table_lifecycle
  }

  column_family {
    family = "family-first"
  }

  column_family {
    family = "family-second"
  }
}
