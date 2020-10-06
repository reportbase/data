for image in 4*.jpg 5*; do convert $image -resize 700x1080! -quality 80 $image; done



