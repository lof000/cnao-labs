
kubectl scale deployment inventory-api-load -n inventory --replicas=0

kubectl patch cronjobs inventory-cron-load-slow -n inventory -p '{"spec" : {"suspend" : true }}'
