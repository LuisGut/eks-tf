module "Eks" {
  source = "../../modules/eks"
  cluster_name          = var.cluster_name
  vpc_name              = var.vpc_name
  cluster_version       = var.cluster_version
  securityGroup_name    = var.securityGroup_name
  nodeGroup_name        = var.nodeGroup_name
  instance_type         = var.instance_type
  ng_minSize            = var.ng_minSize
  ng_maxSize            = var.ng_maxSize
  ng_desiredSize        = var.ng_desiredSize
}