podman network inspect -f '{{range .Subnets}}{{if eq (len .Subnet.IP) 4}}{{.Subnet}}{{end}}{{end}}' kind
