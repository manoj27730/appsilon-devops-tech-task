output "postgres_endpoint" {
  value = aws_db_instance.rds_instance.endpoint
}

output "alb-dns-name" {
  value = aws_alb.alb.dns_name
}


output "iam_role_arn" {
	value = aws_iam_role.ecs_task_execution_role.arn
}
