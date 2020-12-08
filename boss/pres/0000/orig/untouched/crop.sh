for image in *.jpg; do convert $image -gravity center -crop 420x240+0+0 $image; done

