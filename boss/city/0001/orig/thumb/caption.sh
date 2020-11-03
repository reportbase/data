convert "$1".jpg   \
           -font $2 \
           -background transparent -fill white  \
           -size 165x70 -pointsize 35 \
          -gravity south  -annotate +0+30 "$1" \
          "$1".jpg


