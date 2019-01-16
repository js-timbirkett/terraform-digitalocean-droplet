locals {
  droplet_id                   = "${compact(concat(digitalocean_droplet.droplet.*.id, list("")))}"
  droplet_ipv4_address         = "${compact(concat(digitalocean_droplet.droplet.*.ipv4_address, list("")))}"
  droplet_ipv4_address_private = "${compact(concat(digitalocean_droplet.droplet.*.ipv4_address_private, list("")))}"
  droplet_ipv6_address         = "${compact(concat(digitalocean_droplet.droplet.*.ipv6_address, list("")))}"
  droplet_ipv6_address_private = "${compact(concat(digitalocean_droplet.droplet.*.ipv6_address_private, list("")))}"
  droplet_region               = "${compact(concat(digitalocean_droplet.droplet.*.region, list("")))}"
  droplet_name                 = "${compact(concat(digitalocean_droplet.droplet.*.name, list("")))}"
  droplet_size                 = "${compact(concat(digitalocean_droplet.droplet.*.size, list("")))}"
  droplet_image                = "${compact(concat(digitalocean_droplet.droplet.*.image, list("")))}"
  droplet_tags                 = "${compact(concat(flatten(digitalocean_droplet.droplet.*.tags), list("")))}"
  volume_id                    = "${compact(concat(digitalocean_volume.volume.*.id, list("")))}"
  volume_filesystem_type       = "${compact(concat(digitalocean_volume.volume.*.initial_filesystem_type, list("")))}"
  volume_droplet_ids           = "${compact(concat(flatten(digitalocean_volume.volume.*.droplet_ids), list("")))}"
  volume_attachment_id         = "${compact(concat(digitalocean_volume_attachment.volume_attachment.*.id, list("")))}"
}

output "droplet_id" {
  description = "List of IDs of Droplets"
  value       = ["${local.droplet_id}"]
}

output "ipv4_address" {
  description = "List of public IPv4 addresses assigned to the Droplets"
  value       = ["${local.droplet_ipv4_address}"]
}

output "ipv4_address_private" {
  description = "List of private IPv4 addresses assigned to the Droplets, if applicable"
  value       = ["${local.droplet_ipv4_address_private}"]
}

output "ipv6_address" {
  description = "List of public IPv6 addresses assigned to the Droplets, if applicable"
  value       = ["${local.droplet_ipv6_address}"]
}

output "ipv6_address_private" {
  description = "List of private IPv6 addresses assigned to the Droplets, if applicable"
  value       = ["${local.droplet_ipv6_address_private}"]
}

output "region" {
  description = "List of regions of Droplets"
  value       = ["${local.droplet_region}"]
}

output "name" {
  description = "List of names of Droplets"
  value       = ["${local.droplet_name}"]
}

output "size" {
  description = "List of sizes of Droplets"
  value       = ["${local.droplet_size}"]
}

output "image" {
  description = "List of images of Droplets"
  value       = ["${local.droplet_image}"]
}

output "tags" {
  description = "List of tags of Droplets"
  value       = ["${local.droplet_tags}"]
}

output "volume_id" {
  description = "List of IDs of Volumes"
  value       = ["${local.volume_id}"]
}

output "filesystem_type" {
  description = "List of initial filesystem types of Volumes"
  value       = ["${local.volume_filesystem_type}"]
}

output "droplet_ids" {
  description = "List of associated Droplet IDs of Volumes"
  value       = ["${local.volume_droplet_ids}"]
}

output "volume_attachment_id" {
  description = "List of IDs of Volume Attachments"
  value       = ["${local.volume_attachment_id}"]
}