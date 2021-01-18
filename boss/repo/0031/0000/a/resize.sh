for image in *.webp; do convert $image -resize x240 -quality 80 $image; done


