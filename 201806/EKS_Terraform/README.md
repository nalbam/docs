# Terraform EKS

---

## EKS

* Elastic Container Service for Kubernetes
* Kubernetes 제어 플레인을 설치하고 운영할 필요 없이 AWS에서 Kubernetes를 손쉽게 실행하도록 하는 관리형 서비스입니다.

---

## Kubernetes

* 컨테이너화된 애플리케이션의 배포, 조정 및 관리 자동화를 위한 오픈 소스 시스템

---

## Terraform

* 인프라를 코드로 관리하고, 이를 배포/관리 할수 있는 오픈 소스 도구

---

## aws-cli

* version > 1.15.32

```bash
pip3 install awscli
```

---

## terraform

```bash
brew install terraform
```

* https://www.terraform.io/intro/getting-started/install.html

---

## kubectl

```bash
brew install kubectl
```

* https://kubernetes.io/docs/tasks/tools/install-kubectl/
* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/configure-kubectl.html

---

## heptio

```bash
curl -o heptio-authenticator-aws https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/darwin/amd64/heptio-authenticator-aws
chmod +x ./heptio-authenticator-aws && sudo mv ./heptio-authenticator-aws /usr/local/bin/
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/configure-kubectl.html

---

## Terraform

```bash
terraform init

terraform plan

terraform apply

terraform destroy
```

---

## kube-config

```bash
mkdir -p ~/.kube
cat .output/kube-config.yml > ~/.kube/config
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/create-kubeconfig.html

---

## aws-auth

```bash
kubectl apply -f .output/aws-auth.yml
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/add-user-role.html

---

## calico

```bash
kubectl apply -f ./data/calico.yml
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/calico.html

---

## sample

```bash
kubectl apply -f ./data/sample-web.yml
```

---

## kubectl

```bash
kubectl get no,deploy,pod,svc --all-namespaces
```
