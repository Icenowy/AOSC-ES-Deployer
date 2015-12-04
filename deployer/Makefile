help:
	echo "This Makefile is only for configuration"
	echo "make menuconfig for a configuration in a dialog-like interface"
Dconfig: Dconfigs slices/Dconfigs
	sh scripts/gen_dconfig.sh
menuconfig: utils/bin/mconf Dconfig
	utils/bin/mconf Dconfig
utils/bin/mconf: utils/kconfig/mconf
	cp utils/kconfig/mconf utils/bin/mconf
utils/kconfig/mconf:
	make -C utils/kconfig mconf
.PHONY: help
