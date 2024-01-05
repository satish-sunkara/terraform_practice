variable "AMI_ID" {
    default = "ami-03265a0778a880afb"
}

variable "Instance_name" {
    type = list
    default = ["mongodb","reddis","rabbitmq","mysql","cart","user","catalogue","shipping","payment","dipatch","web"]
}

variable "zone_id" {
    default = "Z08239781GWZF21X2KM8L"
}

variable "domain" {
    default = "saachi.online"
}
