[ "$CONFIG_APT_YES" = "y" ] && export APTGETFLAGS+=" --yes"
[ "$CONFIG_RM_VERBOSE" = "y" ] && export RMFLAGS+=" -v"
[ "$CONFIG_CP_VERBOSE" = "y" ] && export CPFLAGS+=" -v"
[ "$CONFIG_MAIN_VERBOSE" = "y" ] && set -v
