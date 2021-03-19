[
   {
      "essential": true,
      "name":"shiny-app",
      "image":"${REPOSITORY_URL}",
      "portMappings":[
         {
            "containerPort":80,
            "hostPort":80,
            "protocol":"tcp"
         }
      ],

  "requiresAttributes": [
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "ecs.capability.execution-role-ecr-pull"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "com.amazonaws.ecs.capability.docker-remote-api.1.18"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "ecs.capability.task-eni"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "com.amazonaws.ecs.capability.ecr-auth"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "ecs.capability.execution-role-awslogs"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "com.amazonaws.ecs.capability.logging-driver.awslogs"
      },
      {
        "targetId": null,
        "targetType": null,
        "value": null,
        "name": "com.amazonaws.ecs.capability.docker-remote-api.1.19"
      }
    ],

      "logConfiguration": {
          "logDriver": "awslogs",
          "options": {
            "awslogs-group": "${CLOUDWATCH_GROUP}",
            "awslogs-region": "${REGION}",
            "awslogs-stream-prefix": "ecs"
          }
        },
      "environment":[
         {
            "name":"POSTGRES_USER",
            "value":"${POSTGRES_USERNAME}"
         },
         {
            "name":"POSTGRES_PASSWORD",
            "value":"${POSTGRES_PASSWD}"
         },
         {
            "name":"POSTGRES_ENDPOINT",
            "value":"${POSTGRES_ENDPOINT}"
         },
         {
            "name":"POSTGRES_DATABASE",
            "value":"${POSTGRES_DATABASE}"
         },
         {
            "name":"SHINY_APP",
            "value":"${SHINY_APP}"
         },
         {
            "name":"SHINY_ENV",
            "value":"${SHINY_ENV}"
         },
         {
            "name":"APP_HOME",
            "value":"${SHINY_APP_HOME}"
         },
         {
            "name":"APP_PORT",
            "value":"${SHINY_APP_PORT}"
         }
      ]
   }
]
