kubectl create ns elastic-kibana
kubectl -n elastic-kibana apply -f ./monitoring/logging/fluentd/kubernetes/elastic/elastic-demo.yaml
kubectl -n elastic-kibana apply -f ./monitoring/logging/fluentd/kubernetes/elastic/kibana-demo.yaml

kubectl -n elastic-kibana get pods

kubectl create ns fluentd
kubectl apply -f ./monitoring/logging/fluentd/kubernetes/fluentd-configmap.yaml
kubectl apply -f ./monitoring/logging/fluentd/kubernetes/fluentd-rbac.yaml
kubectl apply -f ./monitoring/logging/fluentd/kubernetes/fluentd.yaml
kubectl -n fluentd get pods
kubectl apply -f ./monitoring/logging/fluentd/kubernetes/counter.yaml
kubectl get pods
