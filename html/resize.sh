for image in *.jpg ; do convert $image -resize x200 -quality 60 $image; done


