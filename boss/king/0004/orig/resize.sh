for image in *.jpg; do convert $image -resize x1200 -quality 70 $image; done


