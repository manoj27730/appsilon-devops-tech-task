aws ecr get-login-password --region us-east-2 | sudo docker login --username AWS --password-stdin 465485640678.dkr.ecr.us-east-2.amazonaws.com
sudo docker build -t 182-google-charts .
sudo docker tag 182-google-charts:latest 465485640678.dkr.ecr.us-east-2.amazonaws.com/182-google-charts:latest
sudo docker push 465485640678.dkr.ecr.us-east-2.amazonaws.com/182-google-charts:latest



