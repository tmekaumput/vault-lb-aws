output "vault_lb_sg_id" {
  value = element(concat(aws_security_group.vault_lb.*.id, [""]), 0) # TODO: Workaround for issue #11210
}

output "vault_tg_http_8200_arn" {
  value = element(concat(aws_lb_target_group.vault_http_8200.*.arn, [""]), 0) # TODO: Workaround for issue #11210
}

output "vault_tg_https_8200_arn" {
  value = element(concat(aws_lb_target_group.vault_https_8200.*.arn, [""]), 0) # TODO: Workaround for issue #11210
}

output "vault_lb_dns" {
  value = element(concat(aws_lb.vault.*.dns_name, [""]), 0) # TODO: Workaround for issue #11210
}

output "vault_lb_arn" {
  value = element(concat(aws_lb.vault.*.arn, [""]), 0) # TODO: Workaround for issue #11210
}

