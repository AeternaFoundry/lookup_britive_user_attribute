data "britive_user_attribute" "user_attribute_lookup" {
  for_each = var.user_attribute_lookup

  attribute_schema_id = each.value.attribute_schema_id
  name                = each.value.name
}

