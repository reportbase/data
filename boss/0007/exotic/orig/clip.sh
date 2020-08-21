for image in 0*.jpg; do convert $image -gravity center -crop 1728x1080+0+0 $image; done


