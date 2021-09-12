// map is same as object in newer versions of terraform
variable "amis" {
    default = ["ami-0a01a5636f3c4f21c"]
    type = list(string)
}

variable "bucket_name" {
    default = "gwen-stacy-12-sept-2021"
    type = string
}

variable "instance_types" {
    default = [{
        type: "t2.micro"
    }]
    type = list(object({
        type = string
    }))
}
