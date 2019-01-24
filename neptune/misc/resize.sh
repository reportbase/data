for image in *.png; do convert $image -resize 50% -quality 75 small/$image; done
