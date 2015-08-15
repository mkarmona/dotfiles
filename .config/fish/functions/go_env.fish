function go_load_env -d "Load into env user gopath"
	set num_args (count $argv)

	if set -q PATH_PREV
		#echo $PATH_PREV
	else
		set -gx PATH_PREV $PATH
	end
	
	switch $num_args
		case 0
			set -e GOPATH
			set -gx PATH $PATH_PREV 
		case 1
			if [ $argv[1] = "." ]
				# setting pwd GOPATH
				set -gx GOPATH (pwd)
			else
				set -gx GOPATH "$argv[1]"
			end

			set -gx PATH $PATH_PREV
			set -gx PATH $PATH $GOPATH/bin
	end
end
