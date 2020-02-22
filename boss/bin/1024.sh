mkdir 1024 2> tmp
for image in *.jpg ; do convert $image -resize x1024 -quality 75 1024/$image; done



