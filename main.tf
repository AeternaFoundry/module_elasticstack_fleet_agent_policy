resource "elasticstack_fleet_agent_policy" "fleet_agent_policies" {
  for_each = var.fleet_agent_policies

  name                        = each.value.name
  namespace                   = each.value.namespace
  advanced_monitoring_options = each.value.advanced_monitoring_options
  advanced_settings           = each.value.advanced_settings
  data_output_id              = each.value.data_output_id
  description                 = each.value.description
  download_source_id          = each.value.download_source_id
  fleet_server_host_id        = each.value.fleet_server_host_id
  global_data_tags            = each.value.global_data_tags
  host_name_format            = each.value.host_name_format
  inactivity_timeout          = each.value.inactivity_timeout
  is_protected                = each.value.is_protected
  monitor_logs                = each.value.monitor_logs
  monitor_metrics             = each.value.monitor_metrics
  monitoring_output_id        = each.value.monitoring_output_id
  policy_id                   = each.value.policy_id
  required_versions           = each.value.required_versions
  skip_destroy                = each.value.skip_destroy
  space_ids                   = each.value.space_ids
  supports_agentless          = each.value.supports_agentless
  sys_monitoring              = each.value.sys_monitoring
  unenrollment_timeout        = each.value.unenrollment_timeout

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

