for image in *.jpg; do convert $image -resize 50% -quality 70 tiny/$image; done
