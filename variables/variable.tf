variable "ami_id"{
    type = string
    default= "ami-03265a0778a880afb"
}

variable "instance_type"{
    type= string
    default= "t2.micro"
}

variable "ins_tags"{
    type = map
    default = {
    Name = "terraforn_instance"
    Project = "roboshop"
    Environment = "Dev"
    Component = "web"
    terraform = true

    }
}

variable "sg-name"{
    type = string
    default = "allow_aws_sg"
}

variable "sg-description"{
    type = string
    default = "Allow TLS inbound traffic"
}

variable "ingress-from_port"{
    type= number
    default= 0
}

variable "cidr-blocks"{
    type = list
    default=["0.0.0.0/0"]
}
