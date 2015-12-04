#! /bin/bash

cat > Dconfig << EOF
mainmenu "AOSC Embedded Standard Deployer Configuration"

menu "General options"

EOF
for i in Dconfigs/general/*
do
	cat $i >> Dconfig
done
cat >> Dconfig << EOF

endmenu

EOF


