resource "google_compute_region_ssl_certificate" "compute_region_ssl_certificates" {
  for_each = var.compute_region_ssl_certificates

  certificate            = each.value.certificate
  deletion_policy        = each.value.deletion_policy
  description            = each.value.description
  name                   = each.value.name
  name_prefix            = each.value.name_prefix
  private_key            = each.value.private_key
  private_key_wo         = each.value.private_key_wo
  private_key_wo_version = each.value.private_key_wo_version
  project                = each.value.project
  region                 = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

