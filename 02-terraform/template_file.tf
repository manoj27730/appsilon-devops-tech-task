data "template_file" "task_definition_template" {
  template = file("task_definition.json.tpl")
  vars = {
    REPOSITORY_URL = var.shiny_app_image
    POSTGRES_USERNAME = aws_db_instance.rds_instance.username
    POSTGRES_PASSWD = aws_db_instance.rds_instance.password
    POSTGRES_ENDPOINT = aws_db_instance.rds_instance.endpoint
    POSTGRES_DATABASE = aws_db_instance.rds_instance.name
    SHINY_APP = var.shiny_app
    SHINY_ENV = var.shiny_env
    SHINY_APP_HOME = var.shiny_app_home
    SHINY_APP_PORT = var.shiny_app_port
    REGION = var.region
    CLOUDWATCH_GROUP = aws_cloudwatch_log_group.logs.name

  }
}
