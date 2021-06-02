provider "aws"{
    region = "ap-south-1"
    profile = "default"
}

resource "aws_instance" "EC2" {
    ami = "ami-06a0b4e3b7eb7a300"
    instance_type = "t2.micro"
    key_name = "newkey"

    tags = {
      "Name" = "AWs-EC2-RDS"
    }
}
resource "aws_db_instance" "db" {
  allocated_storage    = 10
  identifier           = "database-1"
  engine               = "mysql"
  engine_version       = "8.0.20"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin123"
  publicly_accessible  = true
  skip_final_snapshot  = true
}
