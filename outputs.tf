output "data_factory_linked_service_mysqls" {
  description = "All data_factory_linked_service_mysql resources"
  value       = azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls
}
output "data_factory_linked_service_mysqls_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.additional_properties]
}
output "data_factory_linked_service_mysqls_annotations" {
  description = "List of annotations values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.annotations]
}
output "data_factory_linked_service_mysqls_connection_string" {
  description = "List of connection_string values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.connection_string]
}
output "data_factory_linked_service_mysqls_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.data_factory_id]
}
output "data_factory_linked_service_mysqls_description" {
  description = "List of description values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.description]
}
output "data_factory_linked_service_mysqls_driver_version" {
  description = "List of driver_version values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.driver_version]
}
output "data_factory_linked_service_mysqls_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.integration_runtime_name]
}
output "data_factory_linked_service_mysqls_name" {
  description = "List of name values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.name]
}
output "data_factory_linked_service_mysqls_parameters" {
  description = "List of parameters values across all data_factory_linked_service_mysqls"
  value       = [for k, v in azurerm_data_factory_linked_service_mysql.data_factory_linked_service_mysqls : v.parameters]
}

