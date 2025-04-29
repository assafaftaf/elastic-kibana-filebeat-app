kubectl apply -f namespace.yaml

kubectl apply -f kibana/kibana.yaml
kubectl apply -f kibana/kibana-service.yaml

kubectl apply -f elastic/elastic-service.yaml
kubectl apply -f elastic/elastic.yaml

# kubectl delete configmaps -n assaf filebeat-config
# kubectl create configmap filebeat-config --from-file=filebeat/filebeat_configmap.yml  -n assaf
kubectl apply -f filebeat/filebeat_configmap.yml
kubectl apply -f filebeat/filebeat-service-account.yml
kubectl apply -f filebeat/filebeat-rbac.yml
kubectl apply -f filebeat/filebeat.yaml

kubectl apply -f app/app_deployment.yml  
kubectl apply -f app/app_service.yml  
