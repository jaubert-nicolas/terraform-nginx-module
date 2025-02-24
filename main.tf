resource "docker_image" "nginx" {
  name = var.image
}

resource "docker_container" "nginx" {
  count = var.num_containers

  image = docker_image.nginx.latest
  name  = "nginx_container_${count.index}"

  memory = var.memory
  privileged = var.privileged

  ports {
    internal = 80
    external = var.starting_port + count.index
  }

  upload {
    content = file("${path.module}/nginx.conf")
    file    = "/etc/nginx/conf.d/default.conf"
  }

  upload {
    content = file("${path.module}/index.html")
    file    = "/usr/share/nginx/html/index.html"
  }
}

