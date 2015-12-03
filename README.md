# AOSC OS Embedded Standard (abbr. AOSC OS ES or AOSC ES)
AOSC OS Embedded Standard is for high-performance (relatively) devices which have a restricted storage or have a specified usage.
It's constructed from the mainline AOSC OS by doing subtraction.
Deploying a system means remove selected parts of a given system (called template system).
A deployed system can be packaged into a tarball (to be extracted to a R/W drive) or a squashfs image (to be used with aufs), and it wont't contain dpkg.
## Supported Platforms (Scheduled, restricted by the platform support of mainline AOSC OS)
amd64
armel (really armhf)
