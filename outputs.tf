output "runtime_class_v1s_id" {
  description = "Map of id values across all runtime_class_v1s, keyed the same as var.runtime_class_v1s except keys with no id are omitted"
  value       = { for k, v in kubernetes_runtime_class_v1.runtime_class_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "runtime_class_v1s_handler" {
  description = "Map of handler values across all runtime_class_v1s, keyed the same as var.runtime_class_v1s except keys with no handler are omitted"
  value       = { for k, v in kubernetes_runtime_class_v1.runtime_class_v1s : k => v.handler if v.handler != null && length(v.handler) > 0 }
}
output "runtime_class_v1s_metadata" {
  description = "Map of metadata values across all runtime_class_v1s, keyed the same as var.runtime_class_v1s except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_runtime_class_v1.runtime_class_v1s : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}

