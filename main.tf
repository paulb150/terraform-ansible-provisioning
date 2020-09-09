provider "digitalocean" {
	token = "66b0d9d8b2ebe3f51f894cee474590c72cb331169dade4171e6a1a216c71ae38"
}

resource "digitalocean_tag" "nginx"{
	name = "nginx"
}

resource "digitalocean_droplet" "nginx_server"{
	name = "nginx-server"
	image = "ubuntu-20-04-x64"
	size = "512mb"
	region = "lon1"
	ipv6 = true
	private_networking = false
	tags = ["${digitalocean_tag.nginx.name}"]

}
