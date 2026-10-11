variable "fleet_agent_policies" {
  description = <<EOT
Map of fleet_agent_policies, attributes below
Required:
    - name
    - namespace
Optional:
    - advanced_monitoring_options
    - advanced_settings
    - data_output_id
    - description
    - download_source_id
    - fleet_server_host_id
    - global_data_tags
    - host_name_format
    - inactivity_timeout
    - is_protected
    - monitor_logs
    - monitor_metrics
    - monitoring_output_id
    - policy_id
    - required_versions
    - skip_destroy
    - space_ids
    - supports_agentless
    - sys_monitoring
    - unenrollment_timeout
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name      = string
    namespace = string
    advanced_monitoring_options = optional(object({
      diagnostics = optional(object({
        file_uploader = optional(object({
          backoff_duration = optional(string)
          init_duration    = optional(string)
          max_retries      = optional(number)
        }))
        rate_limits = optional(object({
          burst    = optional(number)
          interval = optional(string)
        }))
      }))
      http_monitoring_endpoint = optional(object({
        buffer_enabled = optional(bool)
        enabled        = optional(bool)
        host           = optional(string)
        port           = optional(number)
        pprof_enabled  = optional(bool)
      }))
    }))
    advanced_settings = optional(object({
      download_target_directory       = optional(string)
      download_timeout                = optional(string)
      go_max_procs                    = optional(number)
      logging_files_interval          = optional(string)
      logging_files_keepfiles         = optional(number)
      logging_files_rotateeverybytes  = optional(number)
      logging_level                   = optional(string)
      logging_metrics_period          = optional(string)
      logging_to_files                = optional(bool)
      monitoring_runtime_experimental = optional(string)
    }))
    data_output_id       = optional(string)
    description          = optional(string)
    download_source_id   = optional(string)
    fleet_server_host_id = optional(string)
    global_data_tags = optional(map(object({
      number_value = optional(number)
      string_value = optional(string)
    })))
    host_name_format     = optional(string)
    inactivity_timeout   = optional(string)
    is_protected         = optional(bool)
    monitor_logs         = optional(bool)
    monitor_metrics      = optional(bool)
    monitoring_output_id = optional(string)
    policy_id            = optional(string)
    required_versions    = optional(map(number))
    skip_destroy         = optional(bool)
    space_ids            = optional(set(string))
    supports_agentless   = optional(bool)
    sys_monitoring       = optional(bool)
    unenrollment_timeout = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

