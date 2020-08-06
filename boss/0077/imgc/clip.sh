for image in 4*.jpg; do convert $image -gravity center -crop 1500x1080+0+0 $image; done


