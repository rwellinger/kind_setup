# Monitoring with Prometeus, Grafana, Loki and Fluentd
This all works on the configured minikube under the ARM64 Architecture. After this you are able to monitor your minikube and see the logs in grafana. How you have to config grafana to see that stuff I have no manual here. You can find a lot of informations for that by any internet search maschin.

## Installing Prometeus
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    kubectl create namespace monitoring
    kubens monitoring
    helm install prometheus prometheus-community/prometheus --namespace=monitoring

## Install Loki

	helm install --values loki-values.yaml loki --namespace=monitoring grafana/loki

## Install Promtail

	helm upgrade --install promtail grafana/promtail --namespace=monitoring -f promtail-values.yaml

## Installing Grafana
    helm repo add grafana https://grafana.github.io/helm-charts
    helm install grafana grafana/grafana --namespace=monitoring
    kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo


## Config in Grafana

### prometheus
http://prometheus-server:80


### Loki
http://loki:3100

#### Header
X-Scope-OrgID: 1

