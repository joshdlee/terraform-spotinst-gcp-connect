variable "project" {
  type        = string
  description = "Name of the project to connect to Spot"
}
variable "name" {
  type        = string
  description = "Name for Spot Account"
  default     = null
}

variable "spotinst_token" {
  type        = string
  description = "Spot by NetApp API Token"
  sensitive   = true
}

variable "debug" {
  type        = bool
  description = "Add flag to expose sensitive variables for troubleshooting"
  default     = false
}

variable "import_existing" {
    type        = bool
    description = "Import an existing Spot Account ID to be managed by terraform"
    default     = false
}

variable "role_id" {
    type        = string
    description = "Add a custom id for the custom role"
    default     = null
}

variable "role_title" {
    type        = string
    description = "Add a custom role title for the custom role"
    default     = null
}

variable "role_description" {
  type        = string
  description = "Add a custom description to the role"
  default     = "Custom Role for Spot by NetApp"
}

variable "role_permissions" {
  type = list(string)
  description = "List of polices for the custom role used by the service account"
  default = [
      "compute.addresses.create",
      "compute.addresses.createInternal",
      "compute.addresses.delete",
      "compute.addresses.get",
      "compute.addresses.list",
      "compute.addresses.setLabels",
      "compute.addresses.useInternal",
      "compute.backendServices.get",
      "compute.backendServices.list",
      "compute.backendServices.update",
      "compute.diskTypes.get",
      "compute.diskTypes.list",
      "compute.disks.create",
      "compute.disks.createSnapshot",
      "compute.disks.delete",
      "compute.disks.get",
      "compute.disks.list",
      "compute.disks.update",
      "compute.disks.use",
      "compute.globalOperations.get",
      "compute.globalOperations.list",
      "compute.healthChecks.useReadOnly",
      "compute.httpHealthChecks.useReadOnly",
      "compute.httpsHealthChecks.useReadOnly",
      "compute.images.create",
      "compute.images.delete",
      "compute.images.get",
      "compute.images.list",
      "compute.images.useReadOnly",
      "compute.instanceGroupManagers.get",
      "compute.instanceGroups.create",
      "compute.instanceGroups.get",
      "compute.instanceGroups.list",
      "compute.instanceGroups.update",
      "compute.instanceGroups.use",
      "compute.instanceGroups.delete",
      "compute.instanceTemplates.get",
      "compute.instances.attachDisk",
      "compute.instances.create",
      "compute.instances.delete",
      "compute.instances.get",
      "compute.instances.list",
      "compute.instances.listReferrers",
      "compute.instances.setLabels",
      "compute.instances.setMetadata",
      "compute.instances.setServiceAccount",
      "compute.instances.setTags",
      "compute.instances.start",
      "compute.instances.stop",
      "compute.instances.use",
      "compute.instances.update",
      "compute.instances.setDiskAutoDelete",
      "compute.machineTypes.get",
      "compute.machineTypes.list",
      "compute.networks.get",
      "compute.networks.list",
      "compute.projects.get",
      "compute.regionBackendServices.get",
      "compute.regionBackendServices.list",
      "compute.regionBackendServices.update",
      "compute.regionOperations.get",
      "compute.regionOperations.list",
      "compute.snapshots.create",
      "compute.snapshots.delete",
      "compute.snapshots.get",
      "compute.snapshots.list",
      "compute.subnetworks.use",
      "compute.subnetworks.useExternalIp",
      "compute.targetPools.addInstance",
      "compute.targetPools.get",
      "compute.targetPools.list",
      "compute.targetPools.removeInstance",
      "compute.zoneOperations.get",
      "compute.zoneOperations.list",
      "compute.zones.list",
      "container.clusterRoleBindings.create",
      "container.clusterRoles.bind",
      "container.clusters.get",
      "container.clusters.list",
      "container.clusters.update",
      "container.operations.get",
      "container.operations.list",
      "iam.serviceAccounts.get",
      "iam.serviceAccounts.list",
      "iam.serviceAccounts.update",
      "monitoring.metricDescriptors.list",
      "monitoring.timeSeries.list",
      "servicemanagement.services.check",
      "servicemanagement.services.report"
      ]
    }


variable "service_account_id" {
    type        = string
    description = "Account ID for GCP Service Account"
    default     = null
}


variable "service_account_display_name" {
    type        = string
    description = "Display Name for GCP Service Account"
    default     = null
}

variable "service_account_description" {
  type        = string
  description = "Description text for Service Account"
  default     = "Service Account for Spot by NetApp"
}