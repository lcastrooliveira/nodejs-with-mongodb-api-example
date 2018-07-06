cd metrics-server/deploy/1.8+
for arquivo in `ls`
do
    echo "creating...$arquivo"
    kubectl create -f $arquivo
done
cd ....

kubectl autoscale deployment api-heroes --cpu-percent 10 --max 10 --min 5
HOST=$(kubectl get svc | grep api-heroes | awk '{print $4}')