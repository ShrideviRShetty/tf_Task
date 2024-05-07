resource "aws_instance" "db" {
  count           = 1
  ami             = "ami-013e83f579886baeb"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.private.id
  key_name        = "simple"
  security_groups = [aws_security_group.db.id]

  user_data = file("msql.sh")
}
