## --------------------------------------------------------------
## Mandatory variable definitions
## --------------------------------------------------------------

variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
}

# Default value passed in
variable "gcp_zone" {
  type        = string
  description = "Zone to create resources in."
}

## --------------------------------------------------------------
## Output variable definitions - Override from Custom Properties 
## --------------------------------------------------------------

# Expected custom_properties key to be declared in `qwiklabs.yaml` 
# with the same name for any lab that uses this script.
variable "gke_cluster_name" {
  type        = string
  description = "GKE Cluster name."
  default     = "test-cluster"
}

# with the same name for any lab that uses this script.
variable "gcp_username" {
  type        = string
  description = "Name of Qwiklabs user"
  default     = "student"
}


## --------------------------------------------------------------
## Custom variable definitions - Override from Custom Properties
## --------------------------------------------------------------

variable "gkeDescription" {
  type        = string 
  description = "Description to apply to the cluster."
  default     = "Lab cluster - using default description" 
}

variable "gkeIsPrivateCluster" {
  type        = bool
  description = "Set as True to spin up a private, secure cluster. False to spin up a public cluster."
  default     = true
}

variable "gkeIsPrivateEndpoint" {
  type        = bool
  description = "Set as True use the cluster private endpoint and disable public endpoint. False means cluster cluster/public endpoint can be used."
  default     = false 
}

variable "gkeIsCustomNetwork" {
  type        = bool
  description = "Set as True to utilize custom network resources. False to switch to default network."
  default     = true
}

variable "gkeNetworkingMode" {
  type        = bool 
  description = "Set to true for VPC_NATIVE (IP aliasing), false for ROUTES (default)"
  default     = "false" 
}

variable "gkeIsAutopilot" {
  type        = bool
  description = "Set as True to utilize custom network resources. False to switch to default network."
  default     = true
}

variable "gkeIsBinAuth" {
  type        = bool 
  description = "Set as True to enable Binary Authorization" 
  default     = false 
}

variable "gkeInitialNodeCount" {
  type        = string 
  description = "Set the initial number of nodes" 
  default     = "1"
}

# Custom properties with defaults 
variable "gkeClusterName" {
  type        = string
  description = "GKE Cluster name."
  default     = "dev-cluster" 
}

# Custom properties with defaults 
variable "gkeMasterIPv4CIDRBlock" {
  type        = string
  description = "GKE Master CIDR block"
  default     = "172.23.0.0/28"
}

# Custom properties with defaults 
variable "gkeModeVpcNative" {
  type        = string
  description = "Networking mode - VPC Native"
  default     = "VPC_NATIVE"
}

# Custom properties with defaults 
variable "gkeModeRoutes" {
  type        = string
  description = "Networking mode - Routes"
  default     = "ROUTES"
}
