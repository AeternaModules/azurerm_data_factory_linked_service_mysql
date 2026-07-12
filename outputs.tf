output "data_factory_linked_service_mysqls_id" {
  description = "Map of id values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.id }
}
output "data_factory_linked_service_mysqls_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.additional_properties }
}
output "data_factory_linked_service_mysqls_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.annotations }
}
output "data_factory_linked_service_mysqls_connection_string" {
  description = "Map of connection_string values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.connection_string }
}
output "data_factory_linked_service_mysqls_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.data_factory_id }
}
output "data_factory_linked_service_mysqls_description" {
  description = "Map of description values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.description }
}
output "data_factory_linked_service_mysqls_driver_version" {
  description = "Map of driver_version values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.driver_version }
}
output "data_factory_linked_service_mysqls_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.integration_runtime_name }
}
output "data_factory_linked_service_mysqls_name" {
  description = "Map of name values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.name }
}
output "data_factory_linked_service_mysqls_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_mysqls, keyed the same as var.data_factory_linked_service_mysqls"
  value       = { for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : k => v.parameters }
}

