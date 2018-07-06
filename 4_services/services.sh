kubectl expose -f replicasets/heroes-rc.json --port 4000 --type LoadBalancer

kubectl expose pod mongodb-6d7bf986bd-c5zp4 port 27017 --type NodePort --name mongo-svc