terraform {
  required_version = ">= 0.12.26"
}

variable "secret_subject" {
    type = string
    sensitive = true
    description = "Secret subject"
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello Plan plan, ${var.subject}! (secret: ${var.secret_subject})"
}
