#! /bin/bash

cat > Dconfig << EOF
mainmenu "AOSC Embedded Standard Deployer Configuration"

menu "General options"

EOF
for i in Dconfigs/general/*
do
	echo "source \"$i\"" >> Dconfig
done
cat >> Dconfig << EOF

endmenu

menu "Slices cut down"

EOF

for i in slices/Dconfigs/*
do
	echo "source \"$i\"" >> Dconfig
done

cat >> Dconfig << EOF

endmenu

EOF
