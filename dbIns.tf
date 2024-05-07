resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t2.micro"
  identifier           = "mydbinstance"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql8.0"
}
