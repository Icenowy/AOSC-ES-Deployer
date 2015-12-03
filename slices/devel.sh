slice_init devel

# FIXME: kde-runtime depends on gdb
slice_devel_cut_packages="autobuild3 autoconf automake autogen bison ccache distcc flex gdb gcc-4.2 gcc-4.4 gcc-4.6 gcc+w64 binutils+w64 llvm"

slice_devel_description() {
	cat << EOF
"devel" means development. After cutting down this slice, the system won't be able to compile userspace programs written with C, C++ or other compilation languages.
Note: "devel" and "compilation" is different, the former one won't remove GNU C Compiler, and so kernel modules (e.g. drivers) can still be built with "devel" cut down.
EOF
}
slice_devel_cutdown_process() {
	rm -rf $TARGET/usr/include # cut down includes of the main system
	rm -rf $TARGET/opt/*/include # cut down includes of optenvs
	rm -rf $TARGET/usr/lib/*.a # cut down static libs of the main system
	rm -rf $TARGET/opt/*/lib/*.a # cut down static libs of optenvs
	
}
