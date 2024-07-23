locals {
  name        = join(" ", compact(split(" ", trim(var.name, " "))))
  description = join(" ", compact(split(" ", trim(var.description, " "))))

  id = regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.id) != "" ? var.id : "Invalid UUID"

  sanitized_tags = { for k, v in var.tags :
    join(" ", compact(split(" ", trim(k, " ")))) => join(" ", compact(split(" ", trim(v, " "))))
  }

  tags = merge(
    local.sanitized_tags,
    {
      ManagedBy = "Terraform"
      User      = local.id
    }
  )
}
