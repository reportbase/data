for image in *.png; do convert $image -resize 40% -quality 70 small/$image; done
#for image in *.png; do convert $image -resize 20% -quality 50 tiny/$image; done
