#!/bin/bash

cat <<-EOF

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm repo list

cd ./deploy/kcm-agent
helm dependency update

cd ./deploy/kcm-agent
helm template -f ../../values.yaml .


kubectl create namespace kcm-monitoring
kubectl get    namespace

helm -n kcm-monitoring uninstall kcm-agent
helm -n kcm-monitoring list

kubectl -n kcm-monitoring get all

cd ./lucida-kcmagent/
helm install kcm-agent deploy/kcm-agent -n kcm-monitoring --create-namespace -f values.yaml
helm install kcm-agent      ./kcm-agent -n kcm-monitoring --create-namespace -f values.yaml
helm -n kcm-monitoring list


#----------------------------------------------
[docker image]
docker images list
docker images import ./kcm-agent-image.tar

[containerD image: pod/image list]
microk8s ctr images list
microk8s ctr images import ./kcm-agent-image.tar

		 ctr images list
         ctr images import ./kcm-agent-image.tar

[cri-o image]
crictl images list
crictl images import ./kcm-agent-image.tar
#----------------------------------------------

EOF
