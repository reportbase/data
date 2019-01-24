for image in *.jpg; do convert $image -resize 25% -quality 70 small/$image; done
