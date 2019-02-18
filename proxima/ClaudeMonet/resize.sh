for image in *.jpg ; do convert $image -resize 40% -quality 70 small/$image; done
