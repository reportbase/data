. meta.ini
NAME=${PWD##*/}
mkdir -p tmp
cd tmp

cp ../orig/*.jpg .

COUNT=`expr $count - 1`
COUNT=$(printf "%04d" "$COUNT") 
TILE=$(printf "%sx1" $count)

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x160 -colorspace RGB $image ; done
montage *.jpg -tile $TILE -mode Concatenate ../home.jpg 

cd ..
rm -r tmp
