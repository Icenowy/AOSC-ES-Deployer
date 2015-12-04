target_dpkg() {
	sudo chroot $TARGET dpkg "$@"
}
target_apt_get() {
	sudo chroot $TARGET apt-get "$@"
}

for i in ${slice_list[@]}
do
	slice_do $i
done
