variable "data_factory_linked_service_mysqls" {
  description = <<EOT
Map of data_factory_linked_service_mysqls, attributes below
Required:
    - connection_string
    - data_factory_id
    - name
Optional:
    - additional_properties
    - annotations
    - description
    - driver_version
    - integration_runtime_name
    - parameters
EOT

  type = map(object({
    connection_string        = string
    data_factory_id          = string
    name                     = string
    additional_properties    = optional(map(string))
    annotations              = optional(list(string))
    description              = optional(string)
    driver_version           = optional(string)
    integration_runtime_name = optional(string)
    parameters               = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_mysqls : (
        length(v.connection_string) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_mysqls : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_mysqls : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_mysqls : (
        v.driver_version == null || (contains(["V1", "V2"], v.driver_version))
      )
    ])
    error_message = "must be one of: V1, V2"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

