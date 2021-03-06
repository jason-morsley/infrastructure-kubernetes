#    _____             _         _____ ____  
#   |  __ \           | |       | ____|___ \ 
#   | |__) |___  _   _| |_ ___  | |__   __) |
#   |  _  // _ \| | | | __/ _ \ |___ \ |__ < 
#   | | \ \ (_) | |_| | ||  __/  ___) |___) |
#   |_|  \_\___/ \__,_|\__\___| |____/|____/ 
#

# rancher.jasonmorsley.io

data "aws_route53_zone" "jasonmorsley-io" {

  name         = var.domain_name
  private_zone = false

}

resource "aws_route53_record" "rancher-a-record" {

  zone_id = data.aws_route53_zone.jasonmorsley-io.zone_id
  name    = var.hostname
  type    = "A"
  ttl     = 300
  records = [aws_instance.k8s.public_ip]

}

output "route_53_name_servers" {
  value = data.aws_route53_zone.jasonmorsley-io.name_servers
}