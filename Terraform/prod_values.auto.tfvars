region = "eu-west-2"

#-------------Networking Variables Default Values-------------------#

vpc_cidr                  = "10.0.0.0/16"
public_subnet_1_cidr      = "10.0.1.0/24"
public_subnet_2_cidr      = "10.0.2.0/24"
private_app_subnet_1_cidr = "10.0.3.0/24"
private_app_subnet_2_cidr = "10.0.4.0/24"
private_db_subnet_1_cidr  = "10.0.5.0/24"
private_db_subnet_2_cidr  = "10.0.6.0/24"

#-------------EC2 Variables Default Values-------------------#
ami                = "ami-0e5f882be1900e43b" 
ec2_instance_type  = "t2.micro"
key_name          = "AWS-Key-CICD"
#-------------RDS Variables Default Values-------------------#

# db_name        = "my_first_db"
# engine         = "mysql"
# engine_version = "8.0.28"
# instance_class = "db.t3.micro"
# username       = "user123"
# password       = "password123"
