for image in *.png; do convert $image -resize 50% -quality 70 small/$image; done
