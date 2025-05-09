resource "oci_redis_redis_cluster" "redis_cluster" {
  #Required
  compartment_id     = var.compartment_id
  display_name       = var.cluster_definition.name
  node_count         = var.cluster_definition.nodes
  node_memory_in_gbs = var.cluster_definition.memory
  software_version   = var.cluster_definition.version
  subnet_id          = var.subnet

  #Optional
  cluster_mode  = var.cluster_definition.mode
  defined_tags  = {}
  freeform_tags = {}
  nsg_ids       = []
  #shard_count = var.cluster_definition.shard_count
}