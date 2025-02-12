variable "common" {
  type = object({
    project     = string
    environment = string
    env_prefix  = string
    root_domain = string
  })
}

variable "vpc" {
  type = object({
    cidr            = string
    public_subnets  = list(string)
    private_subnets = list(string)
  })
}
