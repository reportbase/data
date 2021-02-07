for image in 003*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done

#../bin/./symlink.sh
#../bin/./full.sh
../bin/./join.sh
#../bin/./gif.sh
div000.sh 


