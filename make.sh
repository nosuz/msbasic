if [ ! -d tmp ]; then
	mkdir tmp
fi
if [ ! -d bin ]; then
	mkdir bin
fi

for i in cbmbasic2 applesoft; do

echo $i
ca65 -D $i msbasic.s -o tmp/$i.o &&
ld65 -C $i.cfg tmp/$i.o -o tmp/$i.bin -Ln tmp/$i.lbl
cp tmp/$i.bin bin/$i.bin

done
