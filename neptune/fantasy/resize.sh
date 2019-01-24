for image in *.jpg; do convert $image -resize 50% -quality 75 small/$image; done
