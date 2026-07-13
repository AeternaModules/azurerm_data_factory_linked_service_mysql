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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_mysql's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: connection_string
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: integration_runtime_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: driver_version
  #   condition: contains(["V1", "V2"], value)
  #   message:   must be one of: V1, V2
}

