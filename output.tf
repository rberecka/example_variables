
   
output "print-them-all" {
 value = "${var.word_count}, ${var.sleep_seconds}, ${var.secret_key}, ${var.aws_region_no_default}, ${var.aws_bucket_name}, ${var.cpu_capacity} , ${var.admin_user}"
}