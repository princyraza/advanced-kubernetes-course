# Advanced Kubernetes course

## logging

* These files are modified from https://github.com/kubernetes/kubernetes/blob/master/cluster/addons/fluentd-elasticsearch to add persistent storage and kibana plugins

## Steps

* kubectl create -f logging/
* Run a cluster with sufficient resources (3x t2.medium at least on AWS)
* Make sure to label nodes with beta.kubernetes.io/fluentd-ds-ready=true

## Cheatsheet

* label all the nodes for fluentd:

```bash
for i in $(kubectl get node -o name) ; do kubectl label ${i} beta.kubernetes.io/fluentd-ds-ready=true ; done
```

## TODO:

- [ ] Use Elasticsearch / kibana operator see <https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-quickstart.html>
- [ ] Use fluentd operator see <https://github.com/vmware/kube-fluentd-operator>
