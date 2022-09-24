output layer_arn {
    value = local.insights_layer_arns[var.region][var.architecture]
}