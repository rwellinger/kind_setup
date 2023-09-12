# Create LoadBalancer
For the orginal documentation: https://kind.sigs.k8s.io/docs/user/loadbalancer/



	kubectl create namespace metallb-system
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.7/config/manifests/metallb-native.yaml

## Check Network Range
	docker network inspect -f '{{.IPAM.Config}}' kind


