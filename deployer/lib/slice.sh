declare -a slice_list
slice_init() {
	slice_list[${#slice_list[@]}]=$1
}
slice_do() {
	[ "$(eval echo "\$CONFIG_SLICE_$1")" != "y" ] && return 0
	[ "$(eval echo "\$slice_$1_cut_packages")" ] && 
		target_apt_get purge $(eval echo "\$slice_$1_cut_packages")
	[ "$(type -t slice_$1_cutdown_process)" = "function" ] && slice_$1_cutdown_process
}
