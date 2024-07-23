variable "name" {
  description = "Name of the client"
  type        = string
}

variable "description" {
  description = "Description of the client"
  type        = string
}

variable "id" {
  description = "Client ID"
  type        = string
}

variable "tags" {
  description = "A map of tags for the client"
  type        = map(string)
  default     = {}
}
