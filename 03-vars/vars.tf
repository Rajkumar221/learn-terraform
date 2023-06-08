variable "sample" {
  default = 100
}

variable "sample1" {
  default = "hellow world"
}

output "sample" {
    value = var.sample
}

output "sample1" {
  value = var.sample1
}

## sometimes if variables/any reference with the combination of ssome other string then we have to access those in ${}

output "sample-ext" {
  value = "value of sample - ${var.sample}"
}

# variable types plain, list , map
#plain
variable "course" {
  default = "DevOps"
}

#list
variable "courses" {
  default = [
    "devops",
    "aws",
    "python"
  ]
}

#map
variable "course_details" {
    default = {
        DevOps = {
            name = "devops"
            time = "10AM"
            duration= "90 days"
        }
        AWS = {
            name = "aws"
            time = "11 AM"
            dyration= 90
        }
    }
}

output "couse" {
    value = var.course
}

output "courses" {
   value = var.courses
}

output "course_details" {
   value = var.course_details
} 

#if we want one value in between aws and DevOps

output "course_details" {
    value = var.course_details["DevOps"]
}