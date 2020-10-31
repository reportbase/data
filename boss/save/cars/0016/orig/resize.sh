for image in *.jpg; do convert $image -resize x1080 -quality 80 $image; done


