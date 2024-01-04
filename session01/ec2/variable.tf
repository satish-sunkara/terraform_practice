variable "sg-name"{
    type = string
    default = "allow_aws_sg"
}

variable "sg-description"{
    type = string
    default = "Allow TLS inbound traffic"
}

variable "ingress-from_port"{
    default= 0
}

variable "cidr-blocks"{
    default=["0.0.0.0/0"]
}