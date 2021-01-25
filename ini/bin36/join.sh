mkdir -p tmp
cd tmp

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg +append ../012.000.jpg
convert 006.002.jpg 006.003.jpg +append ../012.001.jpg
convert 006.004.jpg 006.005.jpg +append ../012.002.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg +append ../018.000.jpg
convert 006.003.jpg 006.004.jpg 006.005.jpg +append ../018.001.jpg

convert ../018.000.jpg ../018.001.jpg -append ../018.002.000.jpg
convert ../018.002.000.jpg -sampling-factor 4:2:0 -strip -resize x420 -interlace JPEG -colorspace RGB ../018.002.000.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg 006.003.jpg 006.004.jpg 006.005.jpg +append ../036.000.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






