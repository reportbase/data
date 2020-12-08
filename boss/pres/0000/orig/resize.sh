rm *.jpg
for image in untouched/*.jpg; do convert $image -rotate 0 -gravity center -crop 3500x3000+0+500 $(basename -- "$image") ; done
for image in untouched/*.jpg; do convert $image -rotate 0 -gravity center -crop 3000x3000+0-800 $(basename -- "$image") ; done
for image in *.jpg; do convert $image -quality 80  -resize x1080 $(basename -- "$image") ; done

#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x640 -interlace JPEG -colorspace RGB $image ; done
#for image in 4*.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


