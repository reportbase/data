  convert -size 100x100 xc:none -gravity center \
          -stroke black -strokewidth 2 -annotate 0 'Faerie Dragon' \
          -background none -shadow 100x3+0+0 +repage \
          -stroke none -fill white     -annotate 0 'Faerie Dragon' \
          0000.jpg  +swap -gravity south -geometry +0-3 \
          -composite  g.jpg
  
  
  
