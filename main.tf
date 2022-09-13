module "network" {
  source         = "./modules/network"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr = {
    app1_subnet    = "10.1.0.0/24",
    app2_subnet    = "10.2.0.0/24",
    db1_subnet     = "10.3.0.0/24",
    db2_subnet     = "10.4.0.0/24",
    public1_subnet = "10.5.0.0/24",
    public2_subnet = "10.6.0.0/24"
  }
}

module "ecs_cluster" {
  source       = "./modules/ecs-cluster"
  cluster_name = "test"
}

module "ecs_service" {
  source          = "./modules/ecs-service"
  cluster_arn     = module.ecs_cluster.cluster_arn
  security_groups = [""]
  service_name    = "test-service"
  subnets         = [module.network.pvt_app1_subnet, module.network.pvt_app2_subnet]
  task_definition = "task-definition/task-definition.tpl"
  env = {
    docker_image_url = ""
  }
}

