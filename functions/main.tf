variable "class" {
  default = "devops"
}

# i want to print this in capital letters

output "class" {
  value = upper(var.class)
}

