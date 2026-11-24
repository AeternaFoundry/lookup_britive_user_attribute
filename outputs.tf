output "user_attribute_lookup_id" {
  description = "Map of id values across all user_attribute_lookup, keyed the same as var.user_attribute_lookup"
  value       = { for k, v in data.britive_user_attribute.user_attribute_lookup : k => v.id }
}
output "user_attribute_lookup_attribute_schema_id" {
  description = "Map of attribute_schema_id values across all user_attribute_lookup, keyed the same as var.user_attribute_lookup"
  value       = { for k, v in data.britive_user_attribute.user_attribute_lookup : k => v.attribute_schema_id }
}
output "user_attribute_lookup_name" {
  description = "Map of name values across all user_attribute_lookup, keyed the same as var.user_attribute_lookup"
  value       = { for k, v in data.britive_user_attribute.user_attribute_lookup : k => v.name }
}

