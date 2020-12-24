for image in *.jpg; do convert $image -resize x1080 -quality 60 $image; done


