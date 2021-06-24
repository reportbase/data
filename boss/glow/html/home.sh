. meta.ini
COLS=$montagecols_4
SIZE=$drawsize_4
COUNT=$((COLS * SIZE))
K=$((COUNT - 1))
STOP=$(printf "%04d" "$K") 

NAME=${PWD##*/}
mkdir -p tmp
cd tmp
cp ../orig/*.jpg .

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize $1 -colorspace RGB $image ; done
montage *.jpg -tile "$COUNT"x1 -mode Concatenate ../home.jpg 

cd ..
rm -r tmp
