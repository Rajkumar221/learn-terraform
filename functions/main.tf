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

variable "classes" {
  default = {
    devops = {
        name = "devops"
        topics = [ "jenkins", "docker" ]
    }
    aws = {
        name = "aws"
    }
  }
}

output "devops_classes" {
  value = var.classes["devops"]["topics"]
}

output "aws_topics" {
  value = lookup(var.classes, "aws", null)
}