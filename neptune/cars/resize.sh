for image in *.png; do convert $image -resize 40% -quality 70 small/$image; done
