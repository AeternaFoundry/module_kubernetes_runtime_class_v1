resource "kubernetes_runtime_class_v1" "runtime_class_v1s" {
  for_each = var.runtime_class_v1s

  handler = each.value.handler

  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
  }
}

