# Installing Grafana with Ingress and SSL

This is how you install Grafana on thwelly.net server with valid certificate issued by IONO.


    kubens monitoring
    helm install -f grafana-helm-values.yaml grafana grafana/grafana --namespace=monitoring

Before you add ingress, make sure you have loaded the required <b>thwelly-net-wildcard-tls</b> ca-secret.

    kubectl apply -f grafana-ssl-ingress.yaml
