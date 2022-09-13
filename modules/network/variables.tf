variable "vpc_cidr_block" {
  type        = string
  description = "CIDR Block"
}

variable "subnet_cidr" {
  type = object({
    app1_subnet    = string,
    app2_subnet    = string,
    db1_subnet     = string,
    db2_subnet     = string,
    public1_subnet = string,
    public2_subnet = string
  })

}

