for image in 4*.jpg 5*; do convert $image -resize x1080 -quality 75 $image; done



