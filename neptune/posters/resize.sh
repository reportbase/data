for image in *.jpg; do convert $image -resize 50% -quality 70 small/$image; done
#for image in *.jpg; do convert $image -resize 20% -quality 50 tiny/$image; done
