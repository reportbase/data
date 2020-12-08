rm *.jpg
for image in untouched/*.jpg; do convert $image -quality 80  -resize x1080 $(basename -- "$image") ; done
#for image in *.jpg; do convert $image -gravity center -crop 50%\! $(basename -- "$image") ; done
for image in *.jpg; do convert $image -gravity center -shave 400x0 $(basename -- "$image") ; done

#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x640 -interlace JPEG -colorspace RGB $image ; done
#for image in 4*.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


