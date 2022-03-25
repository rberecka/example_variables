
   
output "print-them-all" {
 value = "${var.word_count}, ${var.sleep_seconds}, can't print the secret key value, ${var.aws_region_no_default}, ${var.aws_bucket_name}, ${var.cpu_capacity} , ${var.admin_user["name"]}, ${var.admin_user["email"]}"
}