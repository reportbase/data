for image in *.jpg; do convert $image -gravity center -crop 3840x1080+0+0 $image; done
#for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB $image ; done
#for image in *.jpg; do convert $image -resize 900x1080! -quality 80 $image; done


