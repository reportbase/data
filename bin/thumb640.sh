mkdir -p thumb
cd thumb
mkdir -p tmp
cp ../*.jpg tmp
cd tmp
pbase.sh south
cd ..

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error
montage {0000..0143}.jpg -tile 144x1 -mode Concatenate ../../144.000.jpg 2> error

rm -r tmp


