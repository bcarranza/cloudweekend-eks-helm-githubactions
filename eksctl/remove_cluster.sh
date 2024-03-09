# Command to delete an Amazon EKS cluster using eksctl
eksctl delete cluster \
    --name k8s-UAEH \                          # Specify the name of the EKS cluster to be deleted
    --region us-east-1                         # Specify the AWS region where the cluster is located

