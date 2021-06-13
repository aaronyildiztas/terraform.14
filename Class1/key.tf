resource "aws_key_pair" "London_Bastion_key" {
  key_name   = "london_bastion_key"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_key_pair" "London_Bastion_key1" {
  key_name   = "london_bastion_key1"
  public_key = file("~/.ssh/id_rsa.pub")
  provider = aws.west
}
resource "aws_key_pair" "London_Bastion_key2" {
  key_name   = "london_bastion_key2"
  public_key = file("~/.ssh/id_rsa.pub")
  provider = aws.ohio
}