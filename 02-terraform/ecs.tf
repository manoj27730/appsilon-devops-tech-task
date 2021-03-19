# ECS cluster
resource "aws_ecs_cluster" "fp-ecs-cluster" {
  name = "shiny-app"
  tags = {
    Name = "shiny-app"
  }
}











