
   
output "print-them-all" {
 value = <<EOT
            Word Count: ${var.word_count}
            Sleep Seconds: ${var.sleep_seconds}
            AWS Region With Default: ${var.aws_region_default}
            AWS Region No Default: ${var.aws_region_no_default}
            CPU Capacity: ${var.cpu_capacity},
            Admin User ${var.admin_user["name"]}
            Admin User Email${var.admin_user["email"]}
          EOT
}
