! [ "$CONFIG_PATH_TARGET" ] && {
	echo "Target path not set"
	exit 1
}

! [ "$CONFIG_PATH_TEMPLATE" ] && {
	echo "Template path not set"
	exit 1
}

if [ -d $CONFIG_PATH_TARGET ]; then
	echo "Target directory found. Clean it."
	rm -rf $CONFIG_PATH_TARGET
	mkdir -p $CONFIG_PATH_TARGET
fi

if [ ! -e $CONFIG_PATH_TEMPLATE/etc/aosc-release ]; then
	echo "Template system is not an AOSC system."
	exit 1
fi

if ! (cat $CONFIG_PATH_TEMPLATE/etc/aosc-release | cut -d ' ' -f 5 | grep -q DPKG); then
	echo "Template system does not use DPKG package manager."
	exit 1
fi
