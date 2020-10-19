#rm *.jpg
#cp ../0000/*.jpg .
for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x1080 -colorspace RGB $image ; done
#for i in 4*.jpg; do convert $i -quality 75 ${i/.jpg/.webp} done



