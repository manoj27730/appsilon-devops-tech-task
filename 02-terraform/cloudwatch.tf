# Log group for Cloudwatch 
resource "aws_cloudwatch_log_group" "logs" {
  # name = "shiny-app"
  name              = "/fargate/${var.cloudwatch_group}"
  retention_in_days = var.logs_retention_in_days
  tags = {
    Environment = "dev"
    Application = var.cloudwatch_group
  }
}
