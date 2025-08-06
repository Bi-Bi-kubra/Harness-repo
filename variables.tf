variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "acr_name" {
  type    = string
  default = ""
}

variable "app_service_plan_name" {
  type    = string
  default = ""
}

variable "app_service_name" {
  type    = string
  default = ""
}
