# modificar pods existentes
kubectl apply -f replicasets/heroes-rc.json
# criar novos
kubectl create -f replicasets/heroes-rc.json
# excluir replica set (e consequentemente todos os pods que tem match com os filtros em metadata)
kubectl delete -f replicasets/heroes-rc.json