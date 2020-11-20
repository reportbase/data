   convert -pointsize 50 -background '#00000080' -fill white label:'Faerie Dragon' miff:- |\
    composite -gravity south -geometry +0+3 \
              -   0000.jpg   e.jpg

