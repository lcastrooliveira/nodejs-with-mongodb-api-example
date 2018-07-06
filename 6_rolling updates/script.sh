kubectl apply -f hero-deploy.json
docker build -t lcastrooliveirak8simagens.azurecr.io/api-heroes:latest .
az acr login --name lcastrooliveirak8simagens
docker push lcastrooliveirak8simagens.azurecr.io/api-heroes:latest
kubectl apply -f hero-deploy.json --record
kubectl get deploy api-heroes-deployment
kubectl rollout history deployment api-heroes-deployment
kubectl rollout status deployment api-heroes-deployment
# voltar para a versao anterior ?
kubectl rollout undo deployment api-heroes-deployment --to-revision 2
kubectl rollout pause deployment api-heroes-deployment
kubectl rollout resume deployment api-heroes-deployment
# trocar deployment
kubectl replace -f hero-deploy2.json --record
# trocar imagens
kubectl set image deployment api-heroes-deployment api-heroes=lcastrooliveirak8simagens.azurecr.io/api-heroes:v1 --record
kubectl set image deployment api-heroes-deployment api-heroes=lcastrooliveirak8simagens.azurecr.io/api-heroes:latest --record

# outros comandos
# altera em runtime num cenario emergencial
kubectl edit deployment api-heroes-deployment --record