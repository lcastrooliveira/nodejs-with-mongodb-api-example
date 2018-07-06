# Interessante para testar coisas em ambiente de produção sem interferir com o que estã em produção
# Listar namespaces
kubectl get namespaces

# Criar namespaces
kubectl create namespace production
kubectl create namespace development

# Rodar um pod em um contexto específico
kubectl --namespace development run nginx --image nginx

# setar namespace padrão para development
kubectl config set-context $(kubectl config current-context) --namespace development

# deletar namespace
kubectl delete namespace development