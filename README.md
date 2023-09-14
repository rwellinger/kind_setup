# Setup Kind (Kubernetes) Cluster

Here are some configuration and scripts to setup KIND as a working, usable kubernetes environment. For Developer Testing purpose only.
Tested and used on Ubuntu Linux on parallels with ARM64 Processor. (Just have this in mind if you CPU is AMD64)

Myself I like KIND a lot more then minikube or else. It works very well and I had much less issues with setup any common software.
Only Issue KIND has is, that it is not made to shutdown it. But if it run on a server like I do (parallels linux server in macos) it is no issue.
After shutdown the server and restart ... KIND starts automatic and works as befor the shutdown of the server. So it is not required to stop or do anything.

What Configurations exist:

 * Common         -> Kind Setup in the config section
   * ingress setup
   * kube UI (Also including ingress access)
   * metallb (LoadBalancer L2)
   * metrics (Enables metrics data in kube ui and k9s)
 * ArgoCD         -> Everything needed to setup ArgoCD to connect over ingress
 * Cert-Manager   -> Setup CERT Manager (Not required with selfsign certificates)
 * Local-Registry -> Obsolate (Dosen't realy work with selfsign certificates. TLS Problems and not able to resolve it. Using docker.io or else registry.)
 * Monitoring     -> Setup promoteus, grafana and loki for logging view, performance view  


Official Website of the KIND Kubernetes Project
https://kind.sigs.k8s.io
