# Uda_Project4

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Remambian/Uda_Project4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Remambian/Uda_Project4/tree/main)

# Project Overview:

In this project, you will apply the skills you have acquired on Microservice at Scale using AWS & Kubernetes.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

# Project Tasks: 
  1. Test your project code using linting
  2. Complete a Dockerfile to containerize this application
  3. Deploy your containerized application using Docker and make a prediction
  4. Improve the log statements in the source code for this application
  5. Configure Kubernetes and create a Kubernetes cluster
  6. Deploy a container using Kubernetes and make a prediction
  7. Upload a complete Github repo with CircleCI to indicate that your code has been tested

# Solution:
  # Environment Set up 
  1. Create a Ubuntu EC2 instance with Ubuntu with python configuration
  2. CLone the project setup in the EC2 Isntance using sudo git clone https://github.com/Remambian/Uda_Project4.git    
  3. Crete a virtual environment with the command "python3 -m venv ~/Nanodegree" & "source ~/Nanodegree/bin/activate"
  4. Complete docker Installation using the commands
         sudo apt install docker-ce docker-ce-cli containerd.io
         sudo systemctl start docker
         sudo systemctl enable docker
         docker --version
  5. Execute "make install" to complete the installation of the required libraries mentioned in the requirement.txt file

   # Create Docker Image
   1. Update the run_doker.sh file with all the required inputs including modifications in the Dockerfile
   2. Complete the exeuction of the run_docker.sh, upload_docker & make_predictions.sh file
   3. Save the outputs in the docker_output.txt file
   4. Validate the presnece of the Image in the docker hub

  # Kubernetes Set Up
   1.  Complete docker Installation using the commands
        curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
        sudo mv kubectl /usr/local/bin/
        kubectl version --client
        sudo apt install -y curl wget apt-transport-https
        curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
        minikube version
        minikube start
        minikube status
   3. Update the run_kubernetes.sh file with all the required inputs including modifications
   4. Complete the exeuction of the run_kubernetes.sh & make_predictions.sh file
   5. Save the outputs in the kubernetes_output.txt file
   
