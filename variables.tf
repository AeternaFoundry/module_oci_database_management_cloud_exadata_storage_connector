variable "database_management_cloud_exadata_storage_connectors" {
  description = <<EOT
Map of database_management_cloud_exadata_storage_connectors, attributes below
Required:
    - agent_id
    - connection_uri
    - storage_server_id
    - credential_info (block):
        - password (required)
        - ssl_trust_store_location (optional)
        - ssl_trust_store_password (optional)
        - ssl_trust_store_type (optional)
        - username (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    agent_id          = string
    connection_uri    = string
    storage_server_id = string
    defined_tags      = optional(map(string))
    display_name      = optional(string)
    freeform_tags     = optional(map(string))
    credential_info = object({
      password                 = string
      ssl_trust_store_location = optional(string)
      ssl_trust_store_password = optional(string)
      ssl_trust_store_type     = optional(string)
      username                 = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

