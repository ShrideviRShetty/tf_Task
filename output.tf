output "web_server_public_ip" {
  value = aws_instance.web.*.public_ip
}

output "db_server_public_ip" {
  value = aws_instance.db.*.public_ip
}

output "mysql_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "web_server_public_dns" {
  value = aws_instance.web.*.public_dns
}
