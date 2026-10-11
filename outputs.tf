output "fleet_agent_policies_id" {
  description = "Map of id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_agent_policies_advanced_monitoring_options" {
  description = "Map of advanced_monitoring_options values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no advanced_monitoring_options are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.advanced_monitoring_options if v.advanced_monitoring_options != null && length(v.advanced_monitoring_options) > 0 }
}
output "fleet_agent_policies_advanced_settings" {
  description = "Map of advanced_settings values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no advanced_settings are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.advanced_settings if v.advanced_settings != null && length(v.advanced_settings) > 0 }
}
output "fleet_agent_policies_data_output_id" {
  description = "Map of data_output_id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no data_output_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.data_output_id if v.data_output_id != null && length(v.data_output_id) > 0 }
}
output "fleet_agent_policies_description" {
  description = "Map of description values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no description are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_agent_policies_download_source_id" {
  description = "Map of download_source_id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no download_source_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.download_source_id if v.download_source_id != null && length(v.download_source_id) > 0 }
}
output "fleet_agent_policies_fleet_server_host_id" {
  description = "Map of fleet_server_host_id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no fleet_server_host_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.fleet_server_host_id if v.fleet_server_host_id != null && length(v.fleet_server_host_id) > 0 }
}
output "fleet_agent_policies_global_data_tags" {
  description = "Map of global_data_tags values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no global_data_tags are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.global_data_tags if v.global_data_tags != null && length(v.global_data_tags) > 0 }
}
output "fleet_agent_policies_host_name_format" {
  description = "Map of host_name_format values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no host_name_format are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.host_name_format if v.host_name_format != null && length(v.host_name_format) > 0 }
}
output "fleet_agent_policies_inactivity_timeout" {
  description = "Map of inactivity_timeout values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no inactivity_timeout are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.inactivity_timeout if v.inactivity_timeout != null && length(v.inactivity_timeout) > 0 }
}
output "fleet_agent_policies_is_protected" {
  description = "Map of is_protected values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no is_protected are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.is_protected if v.is_protected != null }
}
output "fleet_agent_policies_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_agent_policies_monitor_logs" {
  description = "Map of monitor_logs values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no monitor_logs are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.monitor_logs if v.monitor_logs != null }
}
output "fleet_agent_policies_monitor_metrics" {
  description = "Map of monitor_metrics values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no monitor_metrics are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.monitor_metrics if v.monitor_metrics != null }
}
output "fleet_agent_policies_monitoring_output_id" {
  description = "Map of monitoring_output_id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no monitoring_output_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.monitoring_output_id if v.monitoring_output_id != null && length(v.monitoring_output_id) > 0 }
}
output "fleet_agent_policies_name" {
  description = "Map of name values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_agent_policies_namespace" {
  description = "Map of namespace values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no namespace are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "fleet_agent_policies_policy_id" {
  description = "Map of policy_id values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no policy_id are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "fleet_agent_policies_required_versions" {
  description = "Map of required_versions values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no required_versions are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.required_versions if v.required_versions != null && length(v.required_versions) > 0 }
}
output "fleet_agent_policies_skip_destroy" {
  description = "Map of skip_destroy values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no skip_destroy are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.skip_destroy if v.skip_destroy != null }
}
output "fleet_agent_policies_space_ids" {
  description = "Map of space_ids values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}
output "fleet_agent_policies_supports_agentless" {
  description = "Map of supports_agentless values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no supports_agentless are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.supports_agentless if v.supports_agentless != null }
}
output "fleet_agent_policies_sys_monitoring" {
  description = "Map of sys_monitoring values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no sys_monitoring are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.sys_monitoring if v.sys_monitoring != null }
}
output "fleet_agent_policies_unenrollment_timeout" {
  description = "Map of unenrollment_timeout values across all fleet_agent_policies, keyed the same as var.fleet_agent_policies except keys with no unenrollment_timeout are omitted"
  value       = { for k, v in elasticstack_fleet_agent_policy.fleet_agent_policies : k => v.unenrollment_timeout if v.unenrollment_timeout != null && length(v.unenrollment_timeout) > 0 }
}

