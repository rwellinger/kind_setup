# Metrics on Kind

There is a patch required. Otherwise metrics service dosen't work. Problem is tls verification.

	kubectl patch deployment metrics-server -n kube-system --patch "$(cat metric-server-patch.yaml)"

