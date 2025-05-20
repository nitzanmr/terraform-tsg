
variable "image_name" {
    description = "The name of the Docker image to pull"
    type        = string
    default     = "nginx:1.27-alpine3.21"
}

variable "container_name" {
    description = "The name of the Docker container to create"
    type        = string
    default     = "nginx_container"
}
variable "container_ports" {
    description = "The ports to expose on the container"
    type        = object({
        internal = number
        external = number
    })
    default     = {
        internal = 80
        external = 80
    }
}