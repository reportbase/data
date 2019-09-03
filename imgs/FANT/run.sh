mkdir 320 2> tmp
for image in *.jpg ; do convert $image -resize 320 -quality 80 320/$image; done

mkdir 640 2> tmp
for image in *.jpg ; do convert $image -resize 640 -quality 80 640/$image; done

mkdir 960 2> tmp
for image in *.jpg ; do convert $image -resize 960 -quality 80 960/$image; done

mkdir 1280 2> tmp
for image in *.jpg ; do convert $image -resize 1280 -quality 80 1280/$image; done
