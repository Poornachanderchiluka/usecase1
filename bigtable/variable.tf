variable "bigtable_instance" {
  type = string
}
variable "bigtable_instance_deletion_protection" {
  type = bool
}
variable "cluster_id" {
  type = string
}
variable "nodes" {
  type = number
}
variable "storage_type" {
  type = string
}
variable "cluster_zone" {
  type = string
}
variable "bigtablename" {
  type = string
}
variable "table_lifecycle" {
  type = bool
}
