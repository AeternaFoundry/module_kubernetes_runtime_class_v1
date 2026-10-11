variable "runtime_class_v1s" {
  description = <<EOT
Map of runtime_class_v1s, attributes below
Required:
    - handler
    - metadata (block):
        - annotations (optional)
        - generate_name (optional)
        - labels (optional)
        - name (optional)
EOT

  type = map(object({
    handler = string
    metadata = object({
      annotations   = optional(map(string))
      generate_name = optional(string)
      labels        = optional(map(string))
      name          = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.runtime_class_v1s : (
        can(regex("^[a-z0-9]([-a-z0-9]*[a-z0-9])?", v.handler))
      )
    ])
    error_message = "must match ^[a-z0-9]([-a-z0-9]*[a-z0-9])?"
  }
}

