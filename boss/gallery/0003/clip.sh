for image in 4*.jpg; do convert $image -gravity center -crop 750x1080+0+0 $image; done


