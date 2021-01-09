for image in *_*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x1080 -quality 70 -interlace JPEG -colorspace RGB $image ; done
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


