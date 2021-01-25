mkdir -p tmp
cd tmp
cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg +append ../024.000.jpg
convert 008.003.jpg 008.004.jpg 008.005.jpg +append ../024.001.jpg
convert 008.006.jpg 008.007.jpg 008.008.jpg +append ../024.002.jpg

cp ../018* .
for image in 018*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 018.000.jpg 018.001.jpg +append ../036.000.jpg
convert 018.002.jpg 018.003.jpg +append ../036.001.jpg

cp ../018* .
for image in 018*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x420 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 018.000.jpg 018.001.jpg +append a.jpg
convert 018.002.jpg 008.003.jpg +append b.jpg
convert a.jpg b.jpg -append ../036.002.000.jpg

cp ../018* .
for image in 018*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x320 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 018.000.jpg 018.001.jpg 018.002.jpg 018.003.jpg +append ../072.000.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






