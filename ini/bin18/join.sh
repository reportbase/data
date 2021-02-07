mkdir -p tmp
cd tmp

cp ../003* .
for image in 003*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 003.000.jpg 003.001.jpg 003.002.jpg +append ../009.000.jpg
convert 003.003.jpg 003.004.jpg 003.005.jpg +append ../009.001.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






