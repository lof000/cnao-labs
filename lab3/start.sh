
kubectl scale deployment inventory-api-load -n inventory --replicas=1

kubectl patch cronjobs inventory-cron-load-slow -n inventory -p '{"spec" : {"suspend" : false }}'
