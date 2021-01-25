convert 012.002.000.jpg -sampling-factor 4:2:0 -strip -resize x420 -quality 75 -interlace JPEG -colorspace RGB 012.002.000.jpg

#for image in 012.*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x320 -quality 75 -interlace JPEG -colorspace RGB $image ; done
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


