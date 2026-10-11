variable "compute_region_ssl_certificates" {
  description = <<EOT
Map of compute_region_ssl_certificates, attributes below
Required:
    - certificate
Optional:
    - deletion_policy
    - description
    - name
    - name_prefix
    - private_key
    - private_key_wo
    - private_key_wo_version
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    certificate            = string
    deletion_policy        = optional(string)
    description            = optional(string)
    name                   = optional(string)
    name_prefix            = optional(string)
    private_key            = optional(string)
    private_key_wo         = optional(string)
    private_key_wo_version = optional(string)
    project                = optional(string)
    region                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

