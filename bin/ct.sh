convert -background black -bordercolor black -fill white \
   -size 220x180 -font $2 -gravity center caption:@-              \
   -trim -border 20 -channel A -fx '(lightness/2)+.5'    \
   -gravity center $1.jpg +swap -composite $1.jpg



