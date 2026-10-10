variable "chime_voice_connector_termination_credentials" {
  description = <<EOT
Map of chime_voice_connector_termination_credentials, attributes below
Required:
    - voice_connector_id
    - credentials (block):
        - password (required)
        - username (required)
Optional:
    - region
EOT

  type = map(object({
    voice_connector_id = string
    region             = optional(string)
    credentials = list(object({
      password = string
      username = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_termination_credentials : (
        length(v.credentials) >= 1 && length(v.credentials) <= 10
      )
    ])
    error_message = "Each credentials list must contain between 1 and 10 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

