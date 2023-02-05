function get-pod-logs
	for pod in (get-pods $argv)
		kubectl logs -c $argv $pod > "$pod.log"
		echo "$pod.log"
	end
end

