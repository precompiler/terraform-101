provider "aws" {
  region = "eu-west-1"
}

resource "aws_vpc" "my_vpc_tf" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id = "${aws_vpc.my_vpc_tf.id}"
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "private" {
  vpc_id = "${aws_vpc.my_vpc_tf.id}"
  cidr_block = "10.0.2.0/24"
}