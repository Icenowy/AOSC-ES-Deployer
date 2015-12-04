slice_init devel

# FIXME: kde-runtime depends on gdb
slice_devel_cut_packages="autobuild3 autoconf automake autogen bison ccache distcc flex gdb gcc-4.2 gcc-4.4 gcc-4.6 gcc+w64 binutils+w64 llvm"

slice_devel_cutdown_process() {
	rm -rf $TARGET/usr/include # cut down includes of the main system
	rm -rf $TARGET/opt/*/include # cut down includes of optenvs
	rm -rf $TARGET/usr/lib/*.a # cut down static libs of the main system
	rm -rf $TARGET/opt/*/lib/*.a # cut down static libs of optenvs
	
}
