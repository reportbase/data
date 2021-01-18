for image in *.webp; do convert $image -strip -resize x360 -quality 75 $image ; done
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


