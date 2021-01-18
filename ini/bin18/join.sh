mkdir -p tmp
cd tmp

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg +append ../018.000.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






