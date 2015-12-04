declare -a slice_list
slice_init() {
	slice_list[${#slice_list[@]}]=$1
}
