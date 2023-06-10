variable "class" {
  default = "devops"
}

# i want to print this in capital letters

output "class" {
  value = upper(var.class)
}


variable "fruits" {
  default = [ "apple", "Orange", "grapes" ]
  }

output "fruits_count" {
    value = length(var.fruits)
}