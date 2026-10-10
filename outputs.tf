output "chime_voice_connector_termination_credentials_id" {
  description = "Map of id values across all chime_voice_connector_termination_credentials, keyed the same as var.chime_voice_connector_termination_credentials"
  value       = { for k, v in aws_chime_voice_connector_termination_credentials.chime_voice_connector_termination_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chime_voice_connector_termination_credentials_credentials" {
  description = "Map of credentials values across all chime_voice_connector_termination_credentials, keyed the same as var.chime_voice_connector_termination_credentials"
  value       = { for k, v in aws_chime_voice_connector_termination_credentials.chime_voice_connector_termination_credentials : k => v.credentials if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "chime_voice_connector_termination_credentials_region" {
  description = "Map of region values across all chime_voice_connector_termination_credentials, keyed the same as var.chime_voice_connector_termination_credentials"
  value       = { for k, v in aws_chime_voice_connector_termination_credentials.chime_voice_connector_termination_credentials : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chime_voice_connector_termination_credentials_voice_connector_id" {
  description = "Map of voice_connector_id values across all chime_voice_connector_termination_credentials, keyed the same as var.chime_voice_connector_termination_credentials"
  value       = { for k, v in aws_chime_voice_connector_termination_credentials.chime_voice_connector_termination_credentials : k => v.voice_connector_id if v.voice_connector_id != null && length(v.voice_connector_id) > 0 }
}

