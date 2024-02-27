variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2  = "ami-05fb0b8c1424f266b"
    us-east-1  = "ami-0c7217cdde317cfec"
    ap-south-1 = "ami-0fa377108253bf620"
  }
}
variable "PRIV_KEY_PATH" {
  default = "vprofilekey"
}

variable "PUB_KEY_PATH" {
  default = "vprofilekey.pub"
}

variable "USERNAME" {
  default = "ubuntu"
}

variable "MYIP" {
  default = "64.108.104.52/32"
}

variable "rmuser" {
  default = "rabbit"
}

variable "rmqpass" {
  default = "Gr33n@123456"
}

variable "dbuser" {
  default = "admin"
}

variable "dbname" {
  default = "accounts"
}

variable "dbpass" {
  default = "admin123"
}

variable "instance_count" {
  default = "1"
}

variable "VPC_NAME" {
  default = "vprofile-VPC"
}


variable "Zone1" {
  default = "us-east-2a"
}

variable "Zone2" {
  default = "us-east-2b"
}

variable "Zone3" {
  default = "us-east-2c"
}

variable "VPC_CIDR" {
  default = "172.21.0.0/16"
}

variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PriSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PriSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PriSub3CIDR" {
  default = "172.21.6.0/24"
}