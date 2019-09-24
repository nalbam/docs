---
title: EKS with Terraform
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
  transition: slide
---

# AWS EKS

## with

# Terraform

<!--s-->

## Kubernetes

<!--v-->

* 컨테이너 작업을 자동화하는 오픈소스 플랫폼

* Container Orchestration

* Cluster 는 Master 와 Nodes 로 구성

<!--v-->

<img src="images/container_evolution.svg" height="600">

<!--v-->

<img src="images/kubernetes.png" height="600">

<!--s-->

# EKS

<!--v-->

* Amazon Elastic Container Service for Kubernetes

* AWS 의 Kubernetes 관리형 서비스

<!--v-->

<img src="images/kubernetes_eks.png" height="600">

<!--s-->

# Terraform

<!--v-->

* 서비스 환경을 구축하는 프로비저닝 도구

* Infrstructure as Code

<!--s-->

# Prepare

<!--v-->

> AWS Account

* Access Key, Secret Access Key

<!--v-->

> 관리 리소스 메타 저장소

* AWS S3 Bucket

* terraform-nalbam-seoul

<!--v-->

> Install Tools

* awscli
* terraform
* kubectl
* helm

<!--s-->

# AWS VPC

<!--v-->

* Amazon Virtual Private Cloud

* 사용자가 정의한 가상 네트워크

* VPC, Subnets, Route Tables

<!--v-->

```bash
git clone https://github.com/nalbam/terraform-aws-vpc
```

<!--v-->

<img src="images/terraform_vpc.png" height="600">

<!--v-->

<img src="images/terraform_vpc_main.png" height="300">

<!--v-->

<img src="images/terraform_vpc_variable_01.png" height="500">

<!--v-->

<img src="images/terraform_vpc_variable_02.png" height="500">

<!--v-->

<img src="images/terraform_vpc_variable_03.png" height="500">

<!--v-->

<img src="images/terraform_vpc_variable_04.png" height="200">

<!--v-->

> terraform apply

<!--v-->

<img src="images/terraform_vpc_output.png" height="600">

<!--s-->

# AWS EKS

<!--v-->

```bash
git clone https://github.com/nalbam/terraform-aws-eks
```

<!--v-->

<img src="images/terraform_eks.png" height="600">

<!--v-->

<img src="images/terraform_eks_main.png" height="300">

<!--v-->

<img src="images/terraform_eks_variable_01.png" height="500">

<!--v-->

<img src="images/terraform_eks_variable_02.png" height="500">

<!--v-->

<img src="images/terraform_eks_variable_03.png" height="500">

<!--v-->

<img src="images/terraform_eks_variable_04.png" height="500">

<!--v-->

<img src="images/terraform_eks_variable_05.png" height="500">

<!--v-->

<img src="images/terraform_eks_variable_06.png" height="500">

<!--v-->

> terraform apply

<!--v-->

<img src="images/terraform_eks_output.png" height="600">

<!--v-->

```bash
$ aws eks update-kubeconfig \
    --name seoul-dev-demo-eks \
    --alias seoul-dev-demo-eks
```

<!--v-->

```bash
$ kubectl get no

NAME             STATUS   ROLES    AGE     VERSION
ip-10-10-4-131   Ready    <none>   5d14h   v1.14.6-eks-5047ed
ip-10-10-6-48    Ready    <none>   5d14h   v1.14.6-eks-5047ed
```

<!--s-->

# Helm-cui

<!--s-->

# Thank you
