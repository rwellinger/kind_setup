# KIND CONFIG

If using Podman instead of docker use following command:

        KIND_EXPERIMENTAL_PROVIDER=podman kind create cluster --config ./kind-config.yaml

Otherwise

 	kind create cluster --config ./kind-config.yaml

Please make sure that the IP Adress inside the kind-config.yaml is set to the right used IP from the server IP. Otherwise a remote connection is not possible to the cluster.

If no Remote access ... default is 127.0.0.1. But then you can't connect remotly ... well I diden't found an other solution yet.

# Explenation of the included files

  * creatDockerCluster.sh		-> This is a script to create kind instance, including local docker repository connected to KIND. (with no certs, it works)
  * kind-config-thwellydsrv.yaml	-> This creates an KIND Cluster ready to use with ingress, lb, .. (To use with Docker Engine)
  * kind-config-thwellysrv.yaml		-> This creates an KIND Cluster ready to use with intress, lb, .. (To use with Podman Engine)

