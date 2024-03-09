# Command to create an Amazon EKS cluster using eksctl
eksctl create cluster \
    --name k8s-UAEH \                          # Specify the name of the EKS cluster
    --region us-east-1 \                        # Specify the AWS region where the cluster will be created
    --node-type t3.micro \                      # Specify the EC2 instance type for worker nodes
    --nodes 3 \                                 # Specify the number of worker nodes to be created
    --version 1.29                              # Specify the Kubernetes version for the cluster
