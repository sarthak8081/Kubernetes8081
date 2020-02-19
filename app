kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
kubectl get deployments

curl http://localhost:8001/version

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME



################################################################
kubectl run --image=vmtocloud/myblog vmtocloud-myblog --port=80 --env="DOMAIN=cluster"

kubectl expose deployment vmtocloud-myblog --type=NodePort --name=vmtocloud-myblog

kubectl describe services vmtocloud-myblog

kubectl cluster-info

