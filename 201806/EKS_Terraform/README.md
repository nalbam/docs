# Terraform EKS

#### Elastic Container Service for Kubernetes

---

## Kubernetes

- 컨테이너 작업을 자동화하는 오픈소스 플랫폼
- Cluster 는 Master 와 Node 로 구성 

> <img src="images/kubernetes.png" height="300">

---

## EKS

- Master Node 관리를 AWS 에서
- 우리는 Worker Node 만 관리

> ![](images/what-is-eks.png)

---

## Terraform

* 인프라를 코드로 관리하고, 이를 배포/관리 할수 있는 오픈 소스 도구
* Infrastructure as Code

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

## terraform apply

```bash
terraform init

terraform plan

terraform apply

terraform destroy
```

* https://github.com/nalbam/terraform-aws-eks

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
kubectl apply -f https://raw.githubusercontent.com/aws/amazon-vpc-cni-k8s/v1.0.0/config/v1.0/aws-k8s-cni-calico.yaml
```

* https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/calico.html

---

## sample

```bash
# apply
kubectl apply -f https://raw.githubusercontent.com/nalbam/kubernetes/master/sample/sample-web.yml

# delete
kubectl delete -f https://raw.githubusercontent.com/nalbam/kubernetes/master/sample/sample-web.yml
```

---

## kubectl

```bash
kubectl get no,deploy,pod,svc --all-namespaces
```

---

## Thank You

---

## We are hiring...

> ![](images/interest.png)

* jungyoul.yu@bespinglobal.com
