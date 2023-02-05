function get-pods
	kubectl get pods | awk "/$argv/ { print \$1 }"
end

