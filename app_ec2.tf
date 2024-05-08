resource "aws_instance" "web" {
  count           = 1
  ami             = "ami-013e83f579886baeb"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public.id
  key_name        = "simple"
  associate_public_ip_address = true
  security_groups = [aws_security_group.web.id]
  user_data = file("nginx.sh")
  tags = {
  Name = "webInstance"
 }
}
