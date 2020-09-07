for image in 4*.jpg; do convert $image -gravity center -crop 700x1080+0+0 $image; done


