# Create PODMAN Local Registry

Make sure, that the directory /opt/registry exist with the required files, otherwise it will not work.

## Add users to htpasswd
Maybe you have to install additional packages on Linux (appache2-tools)

    htpasswd -bBc /opt/registry/auth/htpasswd robertw <password>


## Create Repository with PODMAN
Command to create registry:

    podman run --name myregistry \
    -p 5000:5000 \
    -v /opt/registry/data:/var/lib/registry:z \
    -v /opt/registry/auth:/auth:z \
    -e "REGISTRY_AUTH=htpasswd" \
    -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
    -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
    -v /opt/registry/certs:/certs:z \
    -e "REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt" \
    -e "REGISTRY_HTTP_TLS_KEY=/certs/domain.key" \
    -e REGISTRY_COMPATIBILITY_SCHEMA1_ENABLED=true \
    -d \
    docker.io/library/registry:latest


## Login with selfmade cert
Please note, that connect to this repository is only possible over SSL. But because the certificate is selfmade, you need to use the following command to login:

    podman login https://<servername>:5000 --tls-verify=false

Please note that this you also need to keep in Mind for "podman push" or else. Always when you connect to the server. Therfore it is not required for "tag" for example.
