# Kubernetes Dashboard Setup

This will setup Kubernetes Dashboard and allow you to access over every web client in our network range.

Steps to install:

  1. Install the software (check if newer on internet)

          kubectl apply -f recommended.yaml

  2. Change to the management namespace

          kubens kubernetes-dashboard

  3. Setup admin user and access rights to the dashboard

          kubectl apply -f rbac.yaml

  4. Setup Ingress to by able to access without "kubectl proxy"

          kubectl apply -f ingress-no-certmgr.yaml

  5. Get token to access the dashboard for **login over token**

          ./getToken.sh
