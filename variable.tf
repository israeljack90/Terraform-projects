# vpc variables 
variable "vpc_cidr" {
    default         = "10.0.0.0/16"
    description     = "vpc cidr block"
    type            = string
}
 
variable "public_subnet_az1_cidr" {
    default         = "10.0.0.0/24"
    description     = "public subnet az1 cidr block"
    type            = string
}

variable "public_subnet_az2_cidr" {
    default         = "10.0.1.0/24"
    description     = "public subnet az2 cidr block"
    type            = string
}

variable "private_app_subnet_az1_cidr" {
    default         = "10.0.2.0/24"
    description     = "private app subnet az1 cidr block"
    type            = string
}

variable "private_app_subnet_az2_cidr" {
    default         = "10.0.3.0/24"
    description     = "private app subnet az2 cidr block"
    type            = string
}

variable "private_data_subnet_az1_cidr" {
    default         = "10.0.4.0/24"
    description     = "private data subnet az1 cidr block"
    type            = string
}

variable "private_data_subnet_az2_cidr" {
    default         = "10.0.5.0/24"
    description     = "private data subnet az2 cidr block"
    type            = string
}

# security group variables 
variable "ssh_location" {
    default         = "0.0.0.0/0"
    description     = "the ip address that can ssh into the ec2 instance"
    type            = string
}

# rds variables
variable "database_snapshot_identifier" {
    default         = "arn:aws:rds:us-east-1:488933159619:snapshot:fleetcart-final-snapshot"
    description     = "the database snapshot arn"
    type            = string
}

variable "database_instance_class" {
    default         = "db.t2.micro"
    description     = "the database snapshot arn"
    type            = string
}

variable "database_instance_identifier" {
    default         = "dev-rds-db"
    description     = "the database instance identifier"
    type            = string
}

variable "multi_az_deployment" {
    default         = false
    description     = "create a standby db instance"
    type            = bool
}

# application load balancer variables
variable "ssl_certifcate_arn" {
    default         = "arn:aws:acm:us-east-1:488933159619:certificate/0cad80c1-2517-41a0-850e-4bcd69ee1014"
    description     = "ssl certificate"
    type            = string
}

# sns topic variables
# application load balancer variables
variable "operator_email" {
    default         = "israel.jack90@gmail.com"
    description     = "valid email address"
    type            = string
}

# auto scaling group variables
variable "launch_template_name" {
    default         = "dev-launch-template"
    description     = "name of launch template"
    type            = string
}

variable "ec2_image_id" {
    default         = "ami-00b1178b870e8eb8b"
    description     = "id of the ami"
    type            = string
}

variable "ec2_instance_type" {
    default         = "t2.micro"
    description     = "ec2 instance type"
    type            = string
}

variable "ec2_key_pair_name" {
    default         = "myec2key"
    description     = "name of the ec2 key"
    type            = string
}

# route55 variables
variable "domain_name" {
    default         = "zzdynasty.com"
    description     = "domain name"
    type            = string
}

variable "record_name" {
    default         = "www"
    description     = "sub domain name"
    type            = string
}