. ../../meta.ini

mkdir -p thumb
cd thumb
mkdir -p tmp
cp ../*.jpg tmp
cd tmp

numb002.sh south

cd ..

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 60 -interlace JPEG -resize x180 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 220x180+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.$ext 2> error

rm -r tmp






