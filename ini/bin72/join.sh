mkdir -p tmp
cd tmp
cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg +append ../024.000.jpg
convert 008.003.jpg 008.004.jpg 008.005.jpg +append ../024.001.jpg
convert 008.006.jpg 008.007.jpg 008.008.jpg +append ../024.002.jpg

convert 008.000.jpg 008.001.jpg +append ../016.000.jpg
convert 008.002.jpg 008.003.jpg +append ../016.001.jpg
convert 008.004.jpg 008.005.jpg +append ../016.002.jpg
convert 008.006.jpg 008.007.jpg +append ../016.003.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg +append ../012.000.jpg
convert 006.002.jpg 006.003.jpg +append ../012.001.jpg
convert 006.004.jpg 006.005.jpg +append ../012.002.jpg
convert 006.006.jpg 006.007.jpg +append ../012.003.jpg
convert 006.008.jpg 006.009.jpg +append ../012.004.jpg
convert 006.010.jpg 006.011.jpg +append ../012.005.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg +append ../018.000.jpg
convert 006.003.jpg 006.004.jpg 006.005.jpg +append ../018.001.jpg
convert 006.006.jpg 006.007.jpg 006.008.jpg +append ../018.002.jpg
convert 006.009.jpg 006.010.jpg 006.011.jpg +append ../018.003.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg 006.003.jpg 006.004.jpg 006.005.jpg +append ../036.000.jpg
convert 006.006.jpg 006.007.jpg 006.008.jpg 006.009.jpg 006.010.jpg 006.011.jpg +append ../036.001.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x180 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg 006.003.jpg 006.004.jpg 006.005.jpg +append a.jpg
convert 006.006.jpg 006.007.jpg 006.008.jpg 006.009.jpg 006.010.jpg 006.011.jpg +append b.jpg
convert a.jpg b.jpg -append ../036.002.000.jpg

cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x240 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg +append a.jpg
convert 008.003.jpg 008.004.jpg 008.005.jpg +append b.jpg
convert 008.006.jpg 008.007.jpg 008.008.jpg +append c.jpg
convert a.jpg b.jpg c.jpg -append ../024.003.000.jpg

cp ../006* .
for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x320 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.jpg 006.001.jpg 006.002.jpg 006.003.jpg 006.004.jpg 006.005.jpg 006.006.jpg 006.007.jpg 006.008.jpg 006.009.jpg 006.010.jpg 006.011.jpg +append ../072.000.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






