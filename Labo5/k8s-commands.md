# Dit zijn bestand van hun github waarbij ik commentaar heb geschrijven tijdens het bekijken van de video's
# https://gitlab.com/nanuchi/youtube-tutorial-series/-/tree/master/demo-kubernetes-components

# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
# https://minikube.sigs.k8s.io/docs/start/
# https://www.youtube.com/watch?v=X48VuDVv0do

### kubectl apply commands in order (maak & verander commando's)
    
    kubectl apply -f mongo-secret.yaml
    kubectl apply -f mongo.yaml
    kubectl apply -f mongo-configmap.yaml 
    kubectl apply -f mongo-express.yaml

### kubectl get commands

    kubectl get pod
    kubectl get pod --watch
    kubectl get pod -o wide
    kubectl get service
    kubectl get secret
    kubectl get all | grep mongodb

### kubectl debugging commands

    kubectl describe pod mongodb-deployment-xxxxxx
    kubectl describe service mongodb-service
    kubectl logs mongo-express-xxxxxx

### give a URL to external service in minikube (verbind met externe poort commando)

    minikube service mongo-express-service