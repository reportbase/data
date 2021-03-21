for image in *.jpg 5*; do convert $image -resize x1200 -quality 70 $image; done


