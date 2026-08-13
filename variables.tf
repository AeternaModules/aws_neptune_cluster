variable "neptune_clusters" {
  description = <<EOT
Map of neptune_clusters, attributes below
Optional:
    - allow_major_version_upgrade
    - apply_immediately
    - availability_zones
    - backup_retention_period
    - cluster_identifier
    - cluster_identifier_prefix
    - copy_tags_to_snapshot
    - deletion_protection
    - enable_cloudwatch_logs_exports
    - engine
    - engine_version
    - final_snapshot_identifier
    - global_cluster_identifier
    - iam_database_authentication_enabled
    - iam_roles
    - kms_key_arn
    - neptune_cluster_parameter_group_name
    - neptune_instance_parameter_group_name
    - neptune_subnet_group_name
    - port
    - preferred_backup_window
    - preferred_maintenance_window
    - region
    - replication_source_identifier
    - skip_final_snapshot
    - snapshot_identifier
    - storage_encrypted
    - storage_type
    - tags
    - tags_all
    - vpc_security_group_ids
    - serverless_v2_scaling_configuration (block):
        - max_capacity (optional)
        - min_capacity (optional)
EOT

  type = map(object({
    allow_major_version_upgrade           = optional(bool)
    tags                                  = optional(map(string))
    storage_type                          = optional(string)
    storage_encrypted                     = optional(bool)
    snapshot_identifier                   = optional(string)
    skip_final_snapshot                   = optional(bool)
    replication_source_identifier         = optional(string)
    region                                = optional(string)
    preferred_maintenance_window          = optional(string)
    preferred_backup_window               = optional(string)
    port                                  = optional(number)
    neptune_subnet_group_name             = optional(string)
    neptune_instance_parameter_group_name = optional(string)
    neptune_cluster_parameter_group_name  = optional(string)
    tags_all                              = optional(map(string))
    kms_key_arn                           = optional(string)
    iam_database_authentication_enabled   = optional(bool)
    global_cluster_identifier             = optional(string)
    final_snapshot_identifier             = optional(string)
    engine_version                        = optional(string)
    engine                                = optional(string)
    enable_cloudwatch_logs_exports        = optional(set(string))
    deletion_protection                   = optional(bool)
    copy_tags_to_snapshot                 = optional(bool)
    cluster_identifier_prefix             = optional(string)
    cluster_identifier                    = optional(string)
    backup_retention_period               = optional(number)
    availability_zones                    = optional(set(string))
    apply_immediately                     = optional(bool)
    iam_roles                             = optional(set(string))
    vpc_security_group_ids                = optional(set(string))
    serverless_v2_scaling_configuration = optional(object({
      max_capacity = optional(number)
      min_capacity = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.neptune_clusters : (
        v.backup_retention_period == null || (v.backup_retention_period <= 35)
      )
    ])
    error_message = "must be at most 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.neptune_clusters : (
        v.global_cluster_identifier == null || (length(v.global_cluster_identifier) <= 255)
      )
    ])
    error_message = "[from validGlobalCusterIdentifier: invalid when len(value) > 255]"
  }
  # Note: 19 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

