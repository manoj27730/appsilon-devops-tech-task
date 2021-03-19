#Variables
variable "infrastructure_version" {
  default = "1"
}
variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}

variable "vpc_cidr" {
  description = "The CIDR Block for the SiteSeer VPC"
  default     = "10.0.0.0/16"
}

variable "rt_wide_route" {
  description = "Route in the SiteSeer Route Table"
  default     = "0.0.0.0/0"
}
variable "subnet_count" {
  description = "no of subnets"
  default = 2
}

variable "region" {
  default = "us-east-1"
}


variable "availability_zones" {
  description = "availability zone to create subnet"
  default = [
    "us-east-1a",
    "us-east-1b"]
}
variable "postgres_db_port" {
  description = "Port exposed by the RDS instance"
  default = 5432
}
variable "rds_instance_type" {
  description = "Instance type for the RDS database"
  default = "db.t2.micro"
}
# Change database-1 to postgres
variable "rds_identifier" {
  description = "db identifier"
  default     = "database-1"
}
variable "rds_storage_type" {
  description = "db storage type"
  default     = "gp2"
}
# Change 20 to 5
variable "rds_allocated_storage" {
  description = "db allocated storage"
  default     = 20
}
variable "rds_engine" {
  description = "type of db engine"
  default     = "postgres"
}
variable "rds_engine_version" {
  description = "db engine version"
  default     = "12"
}
variable "rds_database_name" {
  description = "db worker name"
  default     = "postgresdb"
}
variable "rds_username" {
  description = "db username"
  default     = "postgres"
}
variable "rds_password" {
  description = "db password"
  default     = "admin123"
}
variable "rds_final_snapshot_identifier" {
  description = "db final snapshot identifier"
  default     = "worker-final"
}
variable "shiny_app_port" {
  description = "Port exposed by the shiny application"
  default = 80 
}
variable "shiny_app_image" {
  description = "Docker image for app"
  default = "465485640678.dkr.ecr.us-east-2.amazonaws.com/182-google-charts:latest"
  #default = "nginx:latest"
}
variable "shiny_app" {
  description = "APP variable"
  default = "app"
}
variable "shiny_env" {
  description = "ENV variable"
  default = "dev"
}
variable "shiny_app_home" {
  description = "APP HOME variable"
  default = "/usr/src/app/"
}
variable "ecs_task_definition_name" {
  description = "Task definition name."
  type = string
  default = "shiny-app"
}

variable "logs_retention_in_days" {
  type        = number
  default     = 90
  description = "Specifies the number of days you want to retain log events"
}

variable "cloudwatch_group" {
  description = "CloudWatch group name."
  type = string
  default = "shiny-app"
}
variable "health_check_path" {
  description = "Http path for task health check"
  default     = "/"
}
