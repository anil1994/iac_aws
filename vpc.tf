resource "aws_vpc" "demo-vpc" {
    cidr_block = "10.0.0.0/26"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"  
    tags = {
        Name = "demo-vpc"
    }
}
resource "aws_subnet" "demo-subnet-public-1" {
    vpc_id = "${aws_vpc.demo-vpc.id}"
    cidr_block = "10.0.0.0/28"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "eu-central-1a"
    tags = {
        Name = "demo-subnet-public-1"
    }
}

resource "aws_subnet" "demo-subnet-public-2" {
    vpc_id = "${aws_vpc.demo-vpc.id}"
    cidr_block = "10.0.0.16/28"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "eu-central-1a"
    tags = {
        Name = "demo-subnet-public-2"
    }
}
resource "aws_subnet" "demo-subnet-private-1" {
    vpc_id = "${aws_vpc.demo-vpc.id}"
    cidr_block = "10.0.0.32/28"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-central-1a"
    tags =  {
        Name = "demo-subnet-private-1"
    }
}
resource "aws_subnet" "demo-subnet-private-2" {
    vpc_id = "${aws_vpc.demo-vpc.id}"
    cidr_block = "10.0.0.48/28"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-central-1a"
    tags = {
        Name = "demo-subnet-private-2"
    }
}
