variable "word_count" {
  type = number
  description = "A locally executed script will wait this amout of time between retries"
}

variable "sleep_seconds" {
  type = number
  description = "A locally executed script will wait this amout of time between retries"
}

variable "availability_zones" {
  type = list(string)
  description = "A list of chosen aws availability zones."
}

variable "secret_key" {
  type = string
  sensitive = true
  description = "Your secret key."
}

# This variable has a default value and will not show up
# in the variable editor
variable "aws_region_default" {
  type = string
  description = "Your aws region"
  default = "usw1"
}

variable "aws_region_no_default" {
  type = string
  description = "Choose your aws region. Must be usw1 or usw2"
}

variable "aws_bucket_name" {
  type = string
}

variable "cpu_capacity" {
  type = number
  description = "Number of CPUs for your service. Must be less than 8"
  sensitive = false
  validation {
    condition = var.cpu_capacity < 8
    error_message = "See the SRE team about capacity management."
  }
}

variable "admin_user" {
  type = map
  description = "{ \"name\" = \"<YOUR_NAME>\", \"email\" = \"<YOUR_EMAIL>\"}"
}