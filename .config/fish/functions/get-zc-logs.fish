function get-zc-logs
	set -l CL $argv[1]
	set dest $argv[2]

	if test -z "$dest"
		set dest "./$CL/"
	end

	for pod in (get-pods $CL)
		kubectl cp -c zc "$pod:/opt/zone_server/$CL/Frontiers/Saved/zLogs/" "$dest"
	end
end

