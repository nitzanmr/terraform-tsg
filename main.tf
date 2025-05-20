

# Pulls the image
resource "docker_image" "nginx" {
  name = var.image_name
  keep_locally = false # this will remove the image after destroy
}

# Creates a container from the image
resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.name
  ports {
    internal = var.container_ports.internal
    external = var.container_ports.external
  }
}