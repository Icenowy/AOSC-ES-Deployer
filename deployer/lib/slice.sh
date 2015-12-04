declare -a slice_list
slice_init() {
	slice_list[${#slice_list[@]}]=$1
	eval "slice_$1_cutdown_process() {
		true
	}"
}
slice_do() {
	cut_packages="$(eval echo "\$slice_$1_cut_packages")"
	cutdown_process=""$(eval echo "slice_$1_cutdown_process")""
	[ "$(eval echo "\$CONFIG_SLICE_$1")" != "y" ] && return 0
	[ "$cut_packages" ] && 
		target_apt_get purge $cut_packages $APTGETFLAGS
	$cutdown_process
}
