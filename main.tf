resource "aws_neptune_cluster" "neptune_clusters" {
  for_each = var.neptune_clusters

  allow_major_version_upgrade           = each.value.allow_major_version_upgrade
  tags                                  = each.value.tags
  storage_type                          = each.value.storage_type
  storage_encrypted                     = each.value.storage_encrypted
  snapshot_identifier                   = each.value.snapshot_identifier
  skip_final_snapshot                   = each.value.skip_final_snapshot
  replication_source_identifier         = each.value.replication_source_identifier
  region                                = each.value.region
  preferred_maintenance_window          = each.value.preferred_maintenance_window
  preferred_backup_window               = each.value.preferred_backup_window
  port                                  = each.value.port
  neptune_subnet_group_name             = each.value.neptune_subnet_group_name
  neptune_instance_parameter_group_name = each.value.neptune_instance_parameter_group_name
  neptune_cluster_parameter_group_name  = each.value.neptune_cluster_parameter_group_name
  tags_all                              = each.value.tags_all
  kms_key_arn                           = each.value.kms_key_arn
  iam_database_authentication_enabled   = each.value.iam_database_authentication_enabled
  global_cluster_identifier             = each.value.global_cluster_identifier
  final_snapshot_identifier             = each.value.final_snapshot_identifier
  engine_version                        = each.value.engine_version
  engine                                = each.value.engine
  enable_cloudwatch_logs_exports        = each.value.enable_cloudwatch_logs_exports
  deletion_protection                   = each.value.deletion_protection
  copy_tags_to_snapshot                 = each.value.copy_tags_to_snapshot
  cluster_identifier_prefix             = each.value.cluster_identifier_prefix
  cluster_identifier                    = each.value.cluster_identifier
  backup_retention_period               = each.value.backup_retention_period
  availability_zones                    = each.value.availability_zones
  apply_immediately                     = each.value.apply_immediately
  iam_roles                             = each.value.iam_roles
  vpc_security_group_ids                = each.value.vpc_security_group_ids

  dynamic "serverless_v2_scaling_configuration" {
    for_each = each.value.serverless_v2_scaling_configuration != null ? [each.value.serverless_v2_scaling_configuration] : []
    content {
      max_capacity = serverless_v2_scaling_configuration.value.max_capacity
      min_capacity = serverless_v2_scaling_configuration.value.min_capacity
    }
  }
}

