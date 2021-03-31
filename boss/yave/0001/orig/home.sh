NAME=${PWD##*/}
mkdir -p tmp
cd tmp

cp ../*.jpg .

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x160 -colorspace RGB $image ; done
montage {0000..0197}.jpg -tile 198x1 -mode Concatenate ../../home.jpg 2> /dev/null

cd ..
rm -r tmp
