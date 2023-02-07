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

```
2503 ◯  wrk     http://localhost:8900/albums/1
Running 10s test @ http://localhost:8900/albums/1
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   316.42us  819.42us  18.41ms   95.16%
    Req/Sec    28.83k     2.92k   37.38k    71.00%
  574191 requests in 10.01s, 113.90MB read
Requests/sec:  57346.26
```

