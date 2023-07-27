clear
source ./setenv.sh

kubectl scale deployment inventory-api-load -n inventory${username} --replicas=0

kubectl patch cronjobs inventory-cron-load-slow -n inventory${username} -p '{"spec" : {"suspend" : true }}'
