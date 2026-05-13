locals {
  context_name_parts = var.context == null ? [] : compact([
    rg,
    try(var.context.org, null),
    try(var.context.domain, null),
    var.context.app,
    var.context.env,
    var.context.region,
    try(var.context.instance, null)
  ])


computed_name = var.context == null ? null : lower(join("-", local.context_name_parts))

resource_group_name  = var.name != null ? lower(var.name) : local.computed_name

location = lower(var.location)

}



