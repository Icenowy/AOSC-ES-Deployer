if [ "$CONFIG_PACK_TARBALL" = "y" ]; then
	export TARBALL_CANNONICAL_PATH="$(readlink -f $CONFIG_PACK_TARBALL_PATH)"
	( cd target; tar cvfJ "$TARBALL_CANNONICAL_PATH" * )
fi
