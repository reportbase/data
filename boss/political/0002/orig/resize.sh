for image in 0*.jpg; do convert $image -resize x720 -quality 75 $image; done



