mkdir -p tmp
cd tmp
cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg +append ../024.000.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg +append ../012.000.jpg
convert 006.002.jpg 006.003.jpg +append ../012.001.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






