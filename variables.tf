variable "user_attribute_lookup" {
  description = <<EOT
Map of user_attribute_lookup, attributes below
Optional:
    - attribute_schema_id
    - name
EOT

  type = map(object({
    attribute_schema_id = optional(string)
    name                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.user_attribute_lookup : (
        v.name == null || (length(v.name) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.user_attribute_lookup : (
        v.attribute_schema_id == null || (length(v.attribute_schema_id) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
}

