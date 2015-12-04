source $PREFIX/lib/slice.sh

for i in $PREFIX/slices/*.sh
do
	source $i
done
