# Terraform EKS

#### Elastic Container Service for Kubernetes

---

## Kubernetes

* 컨테이너 작업을 자동화하는 오픈소스 플랫폼
* Cluster 는 Master 와 Nodes 로 구성 

> <img src="images/kubernetes.png" height="300">

---

## EKS

* AWS 의 Kubernetes 관리형 서비스
* AWS 에서 Master Node 관리 
* 우리는 Worker Node 만 관리

> <img src="images/what-is-eks.png" height="300">

---

## Terraform

* 인프라를 코드로 관리하고, 이를 배포/관리 할수 있는 오픈 소스 도구
* Infrastructure as Code
* Made by HashiCorp
* https://www.terraform.io/

---

## aws-cli

* version > 1.15.32

```bash
pip3 install awscli --upgrade --user

# 또는

pip install awscli --upgrade --user
```

Note:
- 최신버전을 이용 하도록 하고, 최소 1.15.32 이상

---

## terraform

```bash
brew install terraform
```

* https://www.terraform.io/intro/getting-started/install.html

Note:
- Mac 은 홈브루를 통해 쉽게 설치가 가능
- 기타 환경이라면 문서를 참조

---

## kubectl

```bash
brew install kubectl
```

* https://kubernetes.io/docs/tasks/tools/install-kubectl/
* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/configure-kubectl.html

Note:
- Mac 은 홈브루를 통해 쉽게 설치가 가능
- 기타 환경이라면 문서를 참조

---

## heptio

```bash
# mac
curl -o heptio-authenticator-aws https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/darwin/amd64/heptio-authenticator-aws
chmod +x ./heptio-authenticator-aws && sudo mv ./heptio-authenticator-aws /usr/local/bin/

# linux
curl -o heptio-authenticator-aws https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/linux/amd64/heptio-authenticator-aws
chmod +x ./heptio-authenticator-aws && sudo mv ./heptio-authenticator-aws /usr/local/bin/
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/configure-kubectl.html

Note:
- Kubernetes cluster 에 인증하기 위한 툴
- 각 클라이언트 운영체제에 맞는 버전을 설치

---

## terraform apply

```bash
terraform init

terraform plan

terraform apply

terraform destroy
```

* https://github.com/nalbam/terraform-aws-eks

Note:
- 테라폼 소스를 살펴 보도록 합니다.
- 그리고 apply.
- VPC, Subnet, SG, EKS, ASG, Instance

---

## kube config

```bash
mkdir -p ~/.kube
cat .output/kube_config.yml > ~/.kube/config
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/create-kubeconfig.html

Note:
- 설치된 클러스터로 부터 인증 정보를 받아서 저장
- 이제 원격에서 kubectl 명령이 가능

---

## kubectl

```bash
kubectl get node

kubectl get deploy,pod,svc --all-namespaces
```

Note:
- 모든 Namespace 에 어떤 Pod 가 올라와 있는지 확인해 봅니다.

---

## aws auth

```bash
kubectl apply -f .output/aws_auth.yml
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/add-user-role.html

Note:
- 워커 노드가 마스터 노드에 join 할수 있도록 권한을 주어야 합니다.

---

## sample

```bash
# apply
kubectl apply -f data/sample-web.yml

# elb endpoint
kubectl get svc -o wide -n default

# delete
kubectl delete -f data/sample-web.yml
```

Note:
- 샘플 앱을 올려 봅니다.
- ELB 에 Endpoint 가 생성 됨을 알수 있습니다.

---

## Thank You

---

## We are hiring...

> ![](images/interest.png)

* jungyoul.yu@bespinglobal.com
