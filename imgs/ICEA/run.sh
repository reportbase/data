for image in *.png; do convert $image -resize 80% -quality 80 small/$image; done
