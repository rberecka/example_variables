
   
output "print-them-all" {
 value = <<EOT
            Word Count: ${var.word_count}
            Sleep Seconds: ${var.sleep_seconds}
            TF won't let you print your sensitive variable, 
            Availability Zones: ${var.availability_zones},
            AWS Region No Default: ${var.aws_region_no_default}
            AWS Bucket Name${var.aws_bucket_name}
            CPU Capacity, try bigger than 10${var.cpu_capacity},
            Admin User ${var.admin_user["name"]}
            Admin User Email${var.admin_user["email"]}
          EOT
}