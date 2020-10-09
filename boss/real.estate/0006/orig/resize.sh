for image in *.jpg; do convert $image -resize x1080 -quality 75 $image; done



