# Create rds DB Using Terraform 

resource "aws_db_instance""myrds" { 
  engine = "mysql"
  engine_version = "8.0.41"
  allocated_storage = 20
  instance_class = "db.t3.micro"
  storage_type = "gp2"
  identifier = "mydb"
  username = "admin"
  password = "password!123"
  publicly_available = true
  skip_final_snapshot = true

  tags = {
    Name = "Myrdsdb"
    }
  }
  
