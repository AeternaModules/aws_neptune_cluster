output "neptune_clusters_id" {
  description = "Map of id values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "neptune_clusters_allow_major_version_upgrade" {
  description = "Map of allow_major_version_upgrade values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.allow_major_version_upgrade if v.allow_major_version_upgrade != null }
}
output "neptune_clusters_apply_immediately" {
  description = "Map of apply_immediately values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.apply_immediately if v.apply_immediately != null }
}
output "neptune_clusters_arn" {
  description = "Map of arn values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "neptune_clusters_availability_zones" {
  description = "Map of availability_zones values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "neptune_clusters_backup_retention_period" {
  description = "Map of backup_retention_period values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.backup_retention_period if v.backup_retention_period != null }
}
output "neptune_clusters_cluster_identifier" {
  description = "Map of cluster_identifier values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "neptune_clusters_cluster_identifier_prefix" {
  description = "Map of cluster_identifier_prefix values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.cluster_identifier_prefix if v.cluster_identifier_prefix != null && length(v.cluster_identifier_prefix) > 0 }
}
output "neptune_clusters_cluster_members" {
  description = "Map of cluster_members values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.cluster_members if v.cluster_members != null && length(v.cluster_members) > 0 }
}
output "neptune_clusters_cluster_resource_id" {
  description = "Map of cluster_resource_id values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.cluster_resource_id if v.cluster_resource_id != null && length(v.cluster_resource_id) > 0 }
}
output "neptune_clusters_copy_tags_to_snapshot" {
  description = "Map of copy_tags_to_snapshot values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.copy_tags_to_snapshot if v.copy_tags_to_snapshot != null }
}
output "neptune_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "neptune_clusters_enable_cloudwatch_logs_exports" {
  description = "Map of enable_cloudwatch_logs_exports values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.enable_cloudwatch_logs_exports if v.enable_cloudwatch_logs_exports != null && length(v.enable_cloudwatch_logs_exports) > 0 }
}
output "neptune_clusters_endpoint" {
  description = "Map of endpoint values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "neptune_clusters_engine" {
  description = "Map of engine values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "neptune_clusters_engine_version" {
  description = "Map of engine_version values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "neptune_clusters_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "neptune_clusters_global_cluster_identifier" {
  description = "Map of global_cluster_identifier values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.global_cluster_identifier if v.global_cluster_identifier != null && length(v.global_cluster_identifier) > 0 }
}
output "neptune_clusters_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "neptune_clusters_iam_database_authentication_enabled" {
  description = "Map of iam_database_authentication_enabled values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.iam_database_authentication_enabled if v.iam_database_authentication_enabled != null }
}
output "neptune_clusters_iam_roles" {
  description = "Map of iam_roles values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.iam_roles if v.iam_roles != null && length(v.iam_roles) > 0 }
}
output "neptune_clusters_kms_key_arn" {
  description = "Map of kms_key_arn values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "neptune_clusters_neptune_cluster_parameter_group_name" {
  description = "Map of neptune_cluster_parameter_group_name values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.neptune_cluster_parameter_group_name if v.neptune_cluster_parameter_group_name != null && length(v.neptune_cluster_parameter_group_name) > 0 }
}
output "neptune_clusters_neptune_instance_parameter_group_name" {
  description = "Map of neptune_instance_parameter_group_name values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.neptune_instance_parameter_group_name if v.neptune_instance_parameter_group_name != null && length(v.neptune_instance_parameter_group_name) > 0 }
}
output "neptune_clusters_neptune_subnet_group_name" {
  description = "Map of neptune_subnet_group_name values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.neptune_subnet_group_name if v.neptune_subnet_group_name != null && length(v.neptune_subnet_group_name) > 0 }
}
output "neptune_clusters_port" {
  description = "Map of port values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.port if v.port != null }
}
output "neptune_clusters_preferred_backup_window" {
  description = "Map of preferred_backup_window values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.preferred_backup_window if v.preferred_backup_window != null && length(v.preferred_backup_window) > 0 }
}
output "neptune_clusters_preferred_maintenance_window" {
  description = "Map of preferred_maintenance_window values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.preferred_maintenance_window if v.preferred_maintenance_window != null && length(v.preferred_maintenance_window) > 0 }
}
output "neptune_clusters_reader_endpoint" {
  description = "Map of reader_endpoint values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.reader_endpoint if v.reader_endpoint != null && length(v.reader_endpoint) > 0 }
}
output "neptune_clusters_region" {
  description = "Map of region values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "neptune_clusters_replication_source_identifier" {
  description = "Map of replication_source_identifier values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.replication_source_identifier if v.replication_source_identifier != null && length(v.replication_source_identifier) > 0 }
}
output "neptune_clusters_serverless_v2_scaling_configuration" {
  description = "Map of serverless_v2_scaling_configuration values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => one(v.serverless_v2_scaling_configuration) if v.serverless_v2_scaling_configuration != null && length(v.serverless_v2_scaling_configuration) > 0 }
}
output "neptune_clusters_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "neptune_clusters_snapshot_identifier" {
  description = "Map of snapshot_identifier values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.snapshot_identifier if v.snapshot_identifier != null && length(v.snapshot_identifier) > 0 }
}
output "neptune_clusters_storage_encrypted" {
  description = "Map of storage_encrypted values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.storage_encrypted if v.storage_encrypted != null }
}
output "neptune_clusters_storage_type" {
  description = "Map of storage_type values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "neptune_clusters_tags" {
  description = "Map of tags values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "neptune_clusters_tags_all" {
  description = "Map of tags_all values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "neptune_clusters_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all neptune_clusters, keyed the same as var.neptune_clusters"
  value       = { for k, v in aws_neptune_cluster.neptune_clusters : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

