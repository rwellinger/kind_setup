# Installing Grafana with Ingress and SSL (thwelly.net)
    kubens monitoring
    helm install -f grafana-helm-values.yaml grafana grafana/grafana --namespace=monitoring

    kubectl apply -f grafana-ingress.yaml


    