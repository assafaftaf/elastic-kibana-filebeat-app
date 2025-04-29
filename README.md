# elastic-kibana-filebeat-app
minikube start --memory=6000 --cpus=4 --v=7 --driver docke
apply all files make sure you created the configmap (./apply.sh)

to expose:
minikube service kibana -n assaf

view logs:
discover 
if u cant see data view filebeat you have to create it!
-> create data view -> filebeat-* (type) + timestamp (filed choose)-> save!
