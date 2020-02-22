mkdir 256 2> tmp
for image in *.jpg ; do convert $image -resize x256 -quality 75 256/$image; done



