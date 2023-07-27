variable "cluster-name" {
  default = "eks_latam_lab"
  type    = string
  description = "eks clustar name"
}

variable "profile" {
  description = "AWS profile"
  type        = string
  default     = "default"
}

variable "region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"
  type        = string
}

variable "az1" {
  description = "AWS AZ 1"
  default     = "us-east-1a"
  type        = string
}


variable "az2" {
  description = "AWS AZ 2"
  default     = "us-east-1b"
  type        = string
}

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))

  default = [
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.15.0-eksbuild.1"
    }
  ]
}
