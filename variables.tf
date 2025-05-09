variable "compartment_id" {
  type        = string
  description = "Compartment OCID to deploy the cache"
}

variable "cluster_definition" {
  type = object({
    name        = string,
    nodes       = number,
    memory      = number,
    version     = string, # REDIS_7_0 or VALKEY_7_2.
    mode        = string, # ["NONSHARDED", "SHARDED"]
    shard_count = number
  })
  description = "The cluster definition"
}

variable "subnet" {
  type        = string
  description = "The subnet to deploy the cache"
}