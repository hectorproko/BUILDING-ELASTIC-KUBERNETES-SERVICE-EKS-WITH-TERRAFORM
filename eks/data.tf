# get all available AZs in our region
data "aws_availability_zones" "available_azs" {
  state = "available"
  filter {
    name   = "zone-name"
    values = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1f"]
  }
}
data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN


#To fix issue,Error: the server could not find the requested resource (post configmaps)

# get EKS cluster info to configure Kubernetes and Helm providers
  data "aws_eks_cluster" "cluster" {
  name = module.eks_cluster.cluster_id
}
data "aws_eks_cluster_auth" "cluster" {
  name = module.eks_cluster.cluster_id
}