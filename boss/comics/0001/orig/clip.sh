for image in *.jpg; do convert $image -gravity center -crop 935x1440+0+0 $image; done


