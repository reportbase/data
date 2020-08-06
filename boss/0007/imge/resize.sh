for image in 4*.jpg; do convert $image -resize x1080 -quality 80 $image; done



