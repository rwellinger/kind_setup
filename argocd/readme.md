# Warning: Use Command with namespace or use kubens

# WELLYNET

Take care on the install script. It has own modification to make it possible for ArgoCD to run it with ingress.

# This is the modification

      containers:
      - command:
        - argocd-server
        - --rootpath
        - /argo-cd

# Diff
Maybe it is enogh to just change the version no. Current it is installed 2.1.5
