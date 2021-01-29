mkdir -p tmp
cd tmp

cp ../009* .
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 009.000.jpg 009.001.jpg 009.002.jpg 009.003.jpg +append ../036.000.jpg
convert 009.004.jpg 009.005.jpg 009.006.jpg 009.007.jpg +append ../036.001.jpg
convert 009.008.jpg 009.009.jpg 009.010.jpg 009.011.jpg +append ../036.002.jpg
convert 009.012.jpg 009.013.jpg 009.014.jpg 009.015.jpg +append ../036.003.jpg

cp ../009* .
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x180 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 009.*.jpg +append ../144.000.jpg

cp ../009* .
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x240 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 009.000.jpg 009.001.jpg 009.002.jpg 009.003.jpg 009.004.jpg 009.005.jpg 009.006.jpg 009.007.jpg +append ../072.000.jpg
convert 009.008.jpg 009.009.jpg 009.010.jpg 009.011.jpg 009.012.jpg 009.013.jpg 009.014.jpg 009.015.jpg +append ../072.001.jpg

cd ..
aspect.sh > aspects.out
ls -la > files.out
rm -r tmp









