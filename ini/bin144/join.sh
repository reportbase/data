mkdir -p tmp
cd tmp
cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg +append ../024.000.jpg
convert 008.003.jpg 008.004.jpg 008.005.jpg +append ../024.001.jpg
convert 008.006.jpg 008.007.jpg 008.008.jpg +append ../024.002.jpg
convert 008.009.jpg 008.010.jpg 008.011.jpg +append ../024.003.jpg
convert 008.012.jpg 008.013.jpg 008.014.jpg +append ../024.004.jpg
convert 008.015.jpg 008.016.jpg 008.017.jpg +append ../024.005.jpg

cp ../009* .
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 009.000.jpg 009.001.jpg 009.002.jpg 009.003.jpg +append ../036.000.jpg
convert 009.004.jpg 009.005.jpg 009.006.jpg 009.007.jpg +append ../036.001.jpg
convert 009.008.jpg 009.009.jpg 009.010.jpg 009.011.jpg +append ../036.002.jpg
convert 009.012.jpg 009.013.jpg 009.014.jpg 009.015.jpg +append ../036.003.jpg

cp ../008* .
for image in 008*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.jpg 008.001.jpg 008.002.jpg 008.003.jpg 008.004.jpg 008.005.jpg +append a.jpg
convert 008.006.jpg 008.007.jpg 008.008.jpg 008.009.jpg 008.010.jpg 008.011.jpg +append b.jpg
convert 008.012.jpg 008.013.jpg 008.014.jpg 008.015.jpg 008.016.jpg 008.017.jpg +append c.jpg
convert a.jpg b.jpg c.jpg -append ../048.003.000.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp






