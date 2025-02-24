variable "image" {
  description = "Docker image to use for the container"
  type        = string
  default     = "nginx:latest"
}

variable "memory" {
  description = "Memory limit for the container"
  type        = number
  default     = 512  # in MB
}

variable "privileged" {
  description = "Run the container in privileged mode"
  type        = bool
  default     = false
}

variable "num_containers" {
  description = "Number of containers to spawn"
  type        = number
  default     = 1
}

variable "starting_port" {
  description = "Starting port for the containers"
  type        = number
  default     = 8000
}

