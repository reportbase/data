for image in *.jpg; do convert $image -gravity center -crop 960x1080+0+0 $image; done


