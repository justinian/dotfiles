function docker_clean --description "Clean out all dead containers and unused images"
	set -l exited (docker ps -a | grep Exited | awk '{ print $1 }')
	if test -n "$exited"
		docker rm $exited
	end

	set -l dangling (docker images -q --filter "dangling=true")
	if test -n "$dangling"
		docker rmi $dangling
	end
end

