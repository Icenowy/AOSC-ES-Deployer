slice_init doc

# FIXME: maxima, guile depends on texinfo
slice_doc_cut_packages="gnome-user-docs man-db"

slice_doc_cutdown_process() {
	echo "Purging documents"
	sudo rm -rf $RMFLAGS $TARGET/usr/{,share/}{info,man,doc} 
	echo "Purging 
}
