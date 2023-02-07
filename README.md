# web-service-echo
Golang GIn webservice tutorial on go.dev

## Kubernetes

- Working installations of `minikube` and `kubectl`
- In a terminal `eval $(minikube -p minikube docker-env)`
- Build docker image
- `minikube start`
- `kubectl create -f deployments.yaml`
- `kubectl create -f service.yaml`
- URL = `minikube service --url web-service-gin-svc`
- Access the swagger console at <URL>/docs
